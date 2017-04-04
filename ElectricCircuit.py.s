# Represents an ElectricCircuit Creature
class ElectricCircuit():
  def __init__(self, electricWorld=None, name="[NO NAME]", lineage=-1, generation=0, versionNum=0):
    self.electricWorld = electricWorld
    self.components = {}
    self.componentAddresses = []
    self.circuit = None
    self.componentCounts = dictFromEnumValues(ElectricTypes, lambda: Counter(1))
    self.maxNodes = 1
    self.nodes = []
    self.nodeIndices = {}
    self.nodeCounter = Counter()
    self.circuitName = name
    self.lineage = lineage
    self.versionNum = versionNum
    self.generation = generation
  def mimic(self, other):
    self.circuitName = other.circuitName
    for _, component in other.components.items():
      self.addComponent(component)
    self.circuitName = other.circuitName
    self.lineage  = other.lineage
    self.versionNum  = other.versionNum
    self.generation  = other.generation
  def copy(self, other):
    self.electricWorld = other.electricWorld
    for _, component in other.components.items():
      self.addComponent(component)
    self.circuitName = other.circuitName
    self.lineage  = other.lineage
    self.versionNum  = other.versionNum
    self.generation  = other.generation
  def randomize(self):
    self.components = {}
    self.componentAddresses = []
    self.maxNodes = 1
    self.nodes = []
    self.nodeIndices = {}
    self.nodeCounter = Counter()
    self.addComponent(VSource(1,2,12))
    for j in range(0, random.randint(numSeedAddNodesMin, numSeedAddNodesMax)):
      self.randomAddNode()
  def seed(self):
    while True:
      self.randomize()
      r = self()
      if r != 0:
        return r
      else:
        self.versionNum += 1
  def __mul__(self, other):
    myAddresses = set(self.componentAddresses)
    theirAddresses = set(other.componentAddresses)
    return len(myAddresses&theirAddresses)/len(myAddresses|theirAddresses)
  def __str__(self):
    r = self.name() + '\n'
    nodesInvolved = self.getGraph().findCyclicallyConnected(1)
    nodesInvolved.add(0)
    normalsA = [None] * len(self.components)
    normalsB = [None] * len(self.components)
    trimmeds = [' '] * len(self.components)
    i = 0
    for k, component in self.components.items():
      if set(component.listNodes()) < nodesInvolved:
        templateA = "<%s>"
        templateB = "%s"
      else:
        templateA = "(<%s>"
        templateB = "%s)"
        trimmeds[i] = "TRIMMED"
      normalsA[i] = templateA % k
      normalsB[i] = templateB % self.components[k]
      i += 1
    return ("%s\n" % self.name()) + tablify([normalsA, ['::'] * len(self.components), normalsB, trimmeds], 2, \
                                            stripesEvery=5, stripeChar='-')
  def __repr__(self):
    return str(self)
  def __pos__(self):
    clone = ElectricCircuit(self.electricWorld)
    for (k,component) in self.components.items():
      newComponent = +component
      newComponent.electricCircuit = clone
      clone.addComponent(newComponent)
    return clone
  def name(self):
    return "%s(%s)-%s.%s" % (self.circuitName, self.generation, self.lineage, self.versionNum)
  def reset(self):
    self.circuit = None
    self.componentCounts = dictFromEnumValues(ElectricTypes, lambda: Counter(1))
  def getCircuit(self):
    if self.circuit is None:
      self.circuit = ahkab.Circuit(self.name())
      self.circuit.add_model('ekv', 'nmos', dict(TYPE='n', VTO=.4, KP=10e-6))
    return self.circuit
  def setCircuit(self):
    self.reset()
    nodesInvolved = self.getGraph().findCyclicallyConnected(1)
    nodesInvolved.add(0)
    nodeDictionary = dict(itertools.zip_longest(list(nodesInvolved), range(0,len(nodesInvolved))))
    for (k,component) in self.components.items():
      if component.activated:
        addToCircuit = False
        if set(component.listNodes()) < nodesInvolved:
          component.addToCircuit(nodeDictionary)
  def fitness(self):
    print(self)
    self.setCircuit()
    print(self.circuit)
    x = 0
    if len(self.res) > 0:
      x = max([sampleObjectiveFunction(xs) if str(k)[0] == 'V' else 0 for k, xs in self.res.items()])
    # x = max([max(deriv(result, 2)) for k, result in self.res.items()])
    printts("%s's result is %s" % (self.name(), x), end="", file=mainOutput)
    return x
  def __call__(self):
    def processFunc(ec):
      ec.setCircuit()
      returnHighFunctioning = False
      try:
        tran = ahkab.new_tran(tstart=0., tstop=ec.electricWorld.t, tstep=ec.electricWorld.t/2, method='trap')
        ahkab.run(ec.circuit, tran)['tran']
        returnHighFunctioning = True
      except:
        pass
      if returnHighFunctioning:
        tran = ahkab.new_tran(tstart=0., tstop=ec.electricWorld.t, tstep=ec.electricWorld.tstep, method='trap')
        return ahkab.run(ec.circuit, tran)['tran']
    self.res = runForTime(callTimeLimit, processFunc, self)
    if self.res is None:
      self.res = {0: [0,0,0,0]}
    return self.fitness()
  def getComponentNumber(self, componentType):
    return (self.componentCounts[componentType.value])()
  def addComponent(self, electricComponent):
    electricComponent.electricCircuit = self
    self.maxNodes = max(self.maxNodes, electricComponent.maxNode())
    for node in electricComponent.listNodes():
        if node not in self.nodes:
            self.nodes += [node]
    n = self.electricWorld.getIndex(electricComponent)
    self.components[n] = electricComponent
    self.componentAddresses += [n]
  def getGraph(self):
    g = Graph()
    c = Counter(self.maxNodes + 1)
    for (k, component) in self.components.items():
      if component.activated:
        if component.nConnections == 2:
          g.addEdge(component.a, component.b)
        else:
          i = c()
          g.addEdge(component.a, i)
          g.addEdge(component.b, i)
          g.addEdge(component.c, i)
    return g
  def addNode(self, a, b):
    n = getAndStoreUnique([a, b], self.nodeIndices, self.nodeCounter)
    newNode = self.electricWorld.getNodeIndex(a, b, n)
    self.nodes += [newNode]
    return newNode
  def __invert__(self):
    random.choice([self.randomAddEdge, self.randomSplitComponent, self.randomComponentMutate, \
                   self.randomAddTriode, self.randomAddNode])()
  def randomAddNode(self):
    componentA = ElectricEdge.random(self.nodes)
    componentB = ElectricEdge.random(self.nodes)
    nodeAddress = self.addNode(componentA.a, componentA.b)
    b = componentA.b
    componentA.b = nodeAddress
    componentB.a = nodeAddress
    componentB.b = b
    self.addComponent(componentA)
    self.addComponent(componentB)
  def randomAddEdge(self):
    self.addComponent(ElectricEdge.random(self.nodes))
  def randomSplitComponent(self):
    componentAddress = random.choice(self.componentAddresses)
    if self.components[componentAddress].nConnections == 3:
      return
    nodeAddress = self.addNode(self.components[componentAddress].a, self.components[componentAddress].b)
    self.components[componentAddress].deactivate()
    componentA = +(self.components[componentAddress])
    componentA.activate()
    componentB = ElectricEdge.random(self.nodes)
    if randBool(0.5):
      componentB.a = nodeAddress
      componentB.b = componentA.b
      componentA.b = nodeAddress
    else:
      componentB.a = componentA.a
      componentB.b = nodeAddress
      componentA.a = nodeAddress
    self.addComponent(componentA)
    self.addComponent(componentB)
  def randomComponentMutate(self):
    componentAddress = random.choice(self.componentAddresses)
    ~self.components[componentAddress]
  def randomAddTriode(self):
    self.addComponent(ElectricTriode.random(self.nodes))
  def __mod__(self, other):
    if self.electricWorld != other.electricWorld:
      raise BreedingError('Worlds must collide.')
    childGeneration = (self.generation + other.generation) / 2 + 1
    child = ElectricCircuit(self.electricWorld, random.choice(generationNames[math.floor(childGeneration) % len(generationNames)]), \
                            '(%s@%d.%d+%s@%d.%d)' % (self.circuitName, self.address, self.versionNum, other.circuitName, other.address, other.versionNum))
    selfComponentAddressSet = set(self.componentAddresses)
    otherComponentAddressSet = set(other.componentAddresses)
    newComponents = []
    for k in selfComponentAddressSet & otherComponentAddressSet:
      if self.components[k].activated or other.components[k].activated or randBool(0.5):
        newComponents += [self.components[k] % other.components[k]]
    for k in selfComponentAddressSet - otherComponentAddressSet:
      newComponent = +self.components[k]
      # if randBool(0.15):
      #   newComponent.deactivate()
      newComponents += [newComponent]
    for k in otherComponentAddressSet - selfComponentAddressSet:
      newComponent = +other.components[k]
      if randBool(0.75):
        newComponent.deactivate()
      newComponents += [newComponent]
    for component in newComponents:
      component.electricCircuit = child
      child.addComponent(component)
    child.generation = childGeneration
    return child