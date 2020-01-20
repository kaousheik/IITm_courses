from assign1 import *
import sys
import numpy as np

class component:

    def __init__(self,l):
        self.name = l[0]
        self.nodes = []
        for i in range(1,len(l)-1):
            self.nodes.append(d[l[i]])
        self.value = l[len(l)-1]

fname = sys.argv[1]
l = create_list(fname)
d = {}

if(l[0]):
    data = list(l[1])
    #print(data)
    count = 1
    for i in data:
        if(i[1] not in d):
            d[i[1]] = count
            count += 1
        if(i[2] not in d):
            d[i[2]] = count
            count += 1
    print(d)
    print()
    print(data)
    print()
    class_list = []
    for j in data:
        class_list.append(component(j))

    print(class_list[0].nodes)
    