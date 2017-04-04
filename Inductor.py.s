# Is a inductor
class Inductor(ElectricEdge):
  def __init__(self, a=None, b=None, value=0):
    ElectricEdge.__init__(self, a, b, value)
    self.nameStem = 'L'
    self.componentType = ElectricTypes.INDUCTOR
    self.unit = 'Henry'
    self.nym  = 'Inductor'
    self.multiplier = 1e-5
    self.canBeNegative = False
    if self.b is None:
      self.randomize()
  def addToCircuit(self, nodeDictionary):
    atemp, btemp = self.a, self.b
    self.a = nodeDictionary[self.a]
    self.b = nodeDictionary[self.b]
    self.electricCircuit.getCircuit().add_inductor(self.name(), n1=self.A(), n2=self.B(), value=self.value)
    self.a, self.b = atemp, btemp