# Is a capacitoree
class Capacitor(ElectricEdge):
  def __init__(self, a=None, b=None, value=0):
    ElectricEdge.__init__(self, a, b, value)
    self.nameStem = 'C'
    self.componentType = ElectricTypes.CAPACITOR
    self.unit = 'Farad'
    self.nym  = 'Capacitor'
    self.multiplier = 1e-9
    self.canBeNegative = False
    if self.b is None:
      self.randomize()
  def addToCircuit(self, nodeDictionary):
    atemp, btemp = self.a, self.b
    self.a = nodeDictionary[self.a]
    self.b = nodeDictionary[self.b]
    self.electricCircuit.getCircuit().add_capacitor(self.name(), n1=self.A(), n2=self.B(), value=self.value)
    self.a, self.b = atemp, btemp