# Is a graph (FIX IT)
class Graph():
  def __init__(self):
    self.edges = []
    self.edgeList = {}
    self.nodeList = {}
  def addEdge(self, a, b):
    self.edges += [(a, b)]
    if a in self.edgeList:
      self.edgeList[a] += [b]
    else:
      self.edgeList[a] = [b]
    if b in self.edgeList:
      self.edgeList[b] += [a]
    else:
      self.edgeList[b] = [a]
    if not a in self.nodeList:
      self.nodeList[a] = False
    if not b in self.nodeList:
      self.nodeList[b] = False
  def clearNodeList(self):
    for k in self.nodeList:
      self.nodeList[k] = False
  def findCyclicallyConnected(self, firstNode):
    return set(itertools.chain.from_iterable(self.findCycles(firstNode)))
  def findCycles(self, firstNode):
    if firstNode not in self.nodeList:
      return []
    return self.__findCycles(firstNode, firstNode, [], False)
  def __findCycles(self, firstNode, currNode, nodeList, lastNode):
    cycles = []
    if currNode in nodeList:
      newCycle = nodeList[nodeList.index(currNode):]
      if firstNode in newCycle:
        return [newCycle]
      return []
    if self.edgeList[currNode]:
      for node in self.edgeList[currNode]:
        if node != lastNode:
          cycles += self.__findCycles(firstNode, node, nodeList + [currNode], currNode)
    return cycles