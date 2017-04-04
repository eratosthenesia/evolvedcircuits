
class ElectricTriode(ElectricComponent):
  def __init__(self, a=None, b=None, c=None, value=0):
    ElectricComponent.__init__(self, value)
    self.a = a
    self.b = b
    self.c = c
    self.nConnections = 3
    if b is None:
      self.randomize()
  def __str__(self):
    repString = str((self.a, self.b, self.c))
    if not self.activated:
      repString = strikeout(repString)
    return repString
  def maxNode(self):
    return max(self.a, self.b, self.c)
  def listNodes(self):
    return [self.a, self.b, self.c]
  def A(self):
    if self.a == 0:
      return self.electricCircuit.getCircuit().gnd
    return 'n'+str(self.a)
  def B(self):
    if self.b == 0:
      return self.electricCircuit.getCircuit().gnd
    return 'n'+str(self.b)
  def C(self):
    if self.c == 0:
      return self.electricCircuit.getCircuit().gnd
    return 'n'+str(self.c)
  def randomize(self):
    nodes = self.a
    value = getRandomValue(self.multiplier)
    self.a,self.b,self.c = random.sample(nodes, 3)
    self.value = value
  def __mod__(self, other):
    if self.componentType != other.componentType:
      raise BreedingError("Component types must match.")
    if self.a != other.a or self.b != other.b or self.c != other.c:
      raise BreedingError("Component nodes must match.")
    child = ElectricTriode.getClassFromType(self.componentType) \
    (self.a, self.b, self.c, breedReals(self.value, other.value))
    child.activated = random.choice([self.activated, other.activated])
    return child
  def getClassFromType(electricType):
    if electricType is ElectricTypes.MOSFET:
      return Mosfet
  def random(nodes):
    return ElectricTriode.getClassFromType(random.choice(electricTriodeTypes))(nodes)