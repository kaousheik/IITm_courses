#Have to give argument in the terminal 
import sys
filename = sys.argv[1]
try:
    f = open(filename)
except:
    print("Incorrect File Name")

data = f.read()
f.close()
    
l = data.splitlines()
arr = []
data = []
if(('.circuit' in l) and ('.end' in l) ):
    for i in l:
        arr.append(i.split(' '))

    arr_n = arr[::-1]
    chk = True
    start = False
    i = 0
    while(chk):
        if(arr_n[i][0] == '.end'):
            start = True
            i += 1
            continue
        if(arr_n[i][0] == '.circuit'):
            chk = False
            break
        if(start):
            data.append([])
            temp = list(reversed(arr_n[i]))
            end = len(temp)
            for l in range(len(temp)):
                if(arr_n[i][l]=='' or arr_n[i][l]==' '):
                    end = l
                    break
            for j in range(len(temp)-end,len(temp)):
                print(temp[j],end =' ')
                data[-1].append(temp[j])
            print()
        i += 1
    #Info from the file is extracted and stored in the list 'data'
else:
    print('Doesn\'t contain circuit info.' )