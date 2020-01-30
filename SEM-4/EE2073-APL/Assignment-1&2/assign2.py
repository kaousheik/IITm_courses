from assign1 import *
import sys
import numpy as np

def par_value(l):
    pos = l[-1].find('e')
    if(pos!=-1):
        v1 = int(l[-1][:pos])
        v2 = int(l[-1][pos+1:])
        return v1*(10**v2)
    else:
        return int(l[-1])

class component:

    def __init__(self,l):
        self.name = l[0]
        self.nodes = []
        for i in range(1,len(l)-1):
            self.nodes.append(d[l[i]])
        self.value = l[len(l)-1]

fname = sys.argv[1]
l = create_list(fname)
d = {'GND':0}

if(l[0]):
    data = list(l[1])
    count = 1
    for i in data:
        if(i[1] not in d):
            d[i[1]] = count
            count += 1
        if(i[2] not in d):
            d[i[2]] = count
            count += 1
    class_list = []
    for j in range(len(data)):
        data[j][-1] = par_value(data[j])
        class_list.append(component(data[j]))

    mat_len = len(d) - 1
    vcs = {}
    ccvs = {}
    cccs = {}
    for i in class_list:
        if(i.name[0]=='V'):
            mat_len += 1
            vcs[i.name] = mat_len
        elif(i.name[0]=='H'):
            mat_len += 1
            ccvs[i.name] = mat_len
        elif(i.name[0]=='F'):
            mat_len += 1
            cccs[i.name] = mat_len
    
    M = np.zeros((mat_len,mat_len))
    b = np.zeros(mat_len)
    for j in class_list:
        if(j.name[0]=='R'):
            if(0 not in j.nodes):
                M[j.nodes[0]-1][j.nodes[0]-1] += (1/j.value)
                M[j.nodes[1]-1][j.nodes[1]-1] += (1/j.value)
                M[j.nodes[0]-1][j.nodes[1]-1] -= (1/j.value)
                M[j.nodes[1]-1][j.nodes[0]-1] -= (1/j.value)
            else:
                t = j.nodes[1] if j.nodes[0]==0 else j.nodes[0] 
                M[t-1][t-1] += (1/j.value)
        elif(j.name[0]=='V'):
            b[vcs[j.name]-1] = j.value
            if(0 not in j.nodes):
                M[vcs[j.name]-1][j.nodes[0]-1] -= 1
                M[vcs[j.name]-1][j.nodes[1]-1] += 1
                M[j.nodes[0]-1][vcs[j.name]-1] -= 1
                M[j.nodes[1]-1][vcs[j.name]-1] += 1
            else:
                t = j.nodes[1] if j.nodes[0]==0 else j.nodes[0]
                M[vcs[j.name]-1][t-1] += 1
                M[t-1][vcs[j.name]-1] += 1
        elif(j.name[0]=='I'):
            if(0 not in j.nodes ):
                b[j.nodes[0]-1] += j.value
                b[j.nodes[1]-1] -= j.value
            else:
                t = j.nodes[1] if j.nodes[0]==0 else j.nodes[0]
                b[t] += j.value
        elif(j.name[0]=='G'):
            if((0 in (j.nodes[0],j.nodes[1])) and (0 not in (j.nodes[0],j.nodes[1]))):
                t = j.nodes[1] if j.nodes[0]==0 else j.nodes[0]
                M[t-1][j.nodes[2]-1] += j.value
                M[t-1][j.nodes[3]-1] -= j.value
            elif((0 not in (j.nodes[0],j.nodes[1])) and (0 in (j.nodes[0],j.nodes[1]))):
                t = j.nodes[3] if j.nodes[2]==0 else j.nodes[2]
                M[j.nodes[0]-1][t-1] += j.value
                M[j.nodes[1]-1][t-1] -= j.value
            elif((0 in (j.nodes[0],j.nodes[1])) and (0 in (j.nodes[0],j.nodes[1]))):
                t1 = j.nodes[1] if j.nodes[0]==0 else j.nodes[0]
                t2 = j.nodes[3] if j.nodes[2]==0 else j.nodes[2]
                M[t1-1][t2-1] += j.value
            else:
                M[j.nodes[0]-1][j.nodes[2]-1] += j.value
                M[j.nodes[0]-1][j.nodes[3]-1] -= j.value
                M[j.nodes[1]-1][j.nodes[2]-1] -= j.value
                M[j.nodes[1]-1][j.nodes[3]-1] += j.value
        #elif(j.name[0]=='E'):



    x = np.linalg.solve(M, b)


                
        
    