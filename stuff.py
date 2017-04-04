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
    def findCycles(self):
        self.clearNodeList()
        nodesLeft = set(self.nodeList)
        cycleNum = 0
        cycles = {}
        while nodesLeft:
            print("---")
            cycleNum += 1
            cycleList = set()
            prevNodes = set()
            currNodes = [nodesLeft.pop()]
            depth = 0
            while currNodes:
                depth += 1
                print("CURRNODES: %s" % currNodes)
                print(self.nodeList)
                nextNodes = set()
                for node in currNodes:
                    if node in nodesLeft:
                        nodesLeft.remove(node)
                    print("NODE: %s" % node)
                    if not self.nodeList[node] is True:
                        if self.nodeList[node] is False:
                            self.nodeList[node] = True
                        for n in self.edgeList[node]:
                            print(' ',n,(self.nodeList[n],node,self.nodeList[node]))
                            if n in nodesLeft:
                                nodesLeft.remove(n)
                            if self.nodeList[n] is False:
                                nextNodes.add(n)
                                self.nodeList[n] = (depth, node)
                            elif self.nodeList[n] and n is not self.nodeList[node]:
                                pass
                                # if self.nodeList[n] is not True:
                                    # self.nodeList[n] = node
                            print(' ', self.nodeList)
                prevNodes = set(currNodes)
                currNodes = list(nextNodes)
            cycles[cycleNum] = cycleList
        return cycles

def cycleDetector(self, currNode, nodeList):
    cycles = []
    for node in self.edgeList[currNode]:
        cycles += self.cycleDetector(node, nodeList + [currNode])

g = Graph()
g.addEdge(1,2)
g.addEdge(2,3)
g.addEdge(3,4)
# g.addEdge(3,1)
g.addEdge(4,5)
g.findCycles()

g = Graph()
g.addEdge(1,2)
g.addEdge(2,3)
g.addEdge(3,4)
g.addEdge(4,2)
g.addEdge(4,5)
g.findCycles()

