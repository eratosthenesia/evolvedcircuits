# Is a resistor
class Resistor(ElectricEdge):
  def __init__(self, a=None, b=None, value=0):
    ElectricEdge.__init__(self, a, b, value)
    self.nameStem = 'R'
    self.componentType = ElectricTypes.RESISTOR
    self.unit = 'Ohm'
    self.nym  = 'Resistor'
    self.multiplier = 100
    self.canBeNegative = False
    if self.b is None:
      self.randomize()
  def addToCircuit(self, nodeDictionary):
    atemp, btemp = self.a, self.b
    self.a = nodeDictionary[self.a]
    self.b = nodeDictionary[self.b]
    self.electricCircuit.getCircuit().add_resistor(self.name(), n1=self.A(), n2=self.B(), value=self.value)
    self.a, self.b = atemp, btemp