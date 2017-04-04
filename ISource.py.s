# Is a Current Source
class ISource(ElectricEdge):
  def __init__(self, a=None, b=None, value=0):
    ElectricEdge.__init__(self, a, b, value)
    self.nameStem = 'I'
    self.componentType = ElectricTypes.ISOURCE
    self.unit = 'Ampere'
    self.nym  = 'Current Source'
    self.canBeNegative = True
    if self.b is None:
      self.randomize()
  def addToCircuit(self, nodeDictionary):
    atemp, btemp = self.a, self.b
    self.a = nodeDictionary[self.a]
    self.b = nodeDictionary[self.b]
    self.electricCircuit.getCircuit().add_isource(self.name(), n1=self.A(), n2=self.B(), dc_value=self.value)
    self.a, self.b = atemp, btemp