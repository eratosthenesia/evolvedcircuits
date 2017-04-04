# Represents a connection from a to b
class ElectricEdge(ElectricComponent):
  def __init__(self, a=None, b=None, value=0):
    ElectricComponent.__init__(self, value)
    self.a = a
    self.b = b
    self.nConnections = 2
  def __str__(self):
    repString = ElectricComponent.__str__(self) + str((self.a, self.b))
    if not self.activated:
      repString = strikeout(repString)
    return repString
  def maxNode(self):
    return max(self.a, self.b)
  def listNodes(self):
    return [self.a, self.b]
  def A(self):
    if self.a == 0:
      return self.electricCircuit.getCircuit().gnd
    return 'n'+str(self.a)
  def B(self):
    if self.b == 0:
      return self.electricCircuit.getCircuit().gnd
    return 'n'+str(self.b)
  def randomize(self):
    nodes = self.a
    value = getRandomValue(self.multiplier)
    self.a, self.b = random.sample(nodes, 2)
    self.value = value
  def __mod__(self, other):
    if self.componentType != other.componentType:
      raise BreedingError("Component types must match.")
    if self.a != other.a or self.b != other.b:
      raise BreedingError("Component nodes must match.")
    child = ElectricEdge.getClassFromType(self.componentType) \
    (self.a, self.b, breedReals(self.value, other.value))
    if not random.choice([self.activated, other.activated]):
      child.deactivate()
    return child
  def getClassFromType(electricType):
    if electricType is ElectricTypes.RESISTOR:
      return Resistor
    elif electricType is ElectricTypes.CAPACITOR:
      return Capacitor
    elif electricType is ElectricTypes.INDUCTOR:
      return Inductor
    elif electricType is ElectricTypes.VSOURCE:
      return VSource
    elif electricType is ElectricTypes.ISOURCE:
      return ISource
  def random(nodes):
    return ElectricEdge.getClassFromType(random.choice(electricEdgeTypes))(nodes)