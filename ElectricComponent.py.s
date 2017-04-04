# Represents any electric component
class ElectricComponent():
  def __init__(self, value=0):
    self.value = value
    self.multiplier = 1
    self.activated = True
  def __pos__(self):
    return copy.copy(self)
  def __str__(self):
    return "%s-%s %s" % (scistring(self.value), self.unit, self.nym)
  def __repr__(self):
    return str(self)
  def __invert__(self):
    self.value = mutateReal(self.value, self.canBeNegative)
    if randBool(chanceOfToggleActivation):
      self.toggleActivation()
  def deactivate(self):
    self.activated = False
    return self
  def activate(self):
    self.activated = True
    return self
  def toggleActivation(self):
    self.activated ^= True
    return self
  def name(self):
    if self.electricCircuit:
      return self.nameStem + str(self.electricCircuit.getComponentNumber(self.componentType))