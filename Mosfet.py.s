# Represents a MOSFET
class Mosfet(ElectricTriode):
  def __init__(self, a=None, b=None, c=None, value=0):
    ElectricTriode.__init__(self, a, b, c, value)
    self.nameStem = 'M'
    self.componentType = ElectricTypes.MOSFET
  def __str__(self):
    prefix = "MOSFET Transistor"
    if not self.activated:
      prefix = strikeout(prefix)
    return prefix + ElectricTriode.__str__(self)
  def __invert__(self):
    pass
  def addToCircuit(self, nodeDictionary):
    atemp, btemp, ctemp = self.a,self.b,self.c
    self.a = nodeDictionary[self.a]
    self.b = nodeDictionary[self.b]
    self.c = nodeDictionary[self.c]
    self.electricCircuit.getCircuit().add_mos(self.name(), nd=self.A(), ng=self.B(), ns=self.C(), nb=self.C(), model_label='nmos',w=600e-6, l=100e-9)
    self.a,self.b,self.c = atemp, btemp, ctemp