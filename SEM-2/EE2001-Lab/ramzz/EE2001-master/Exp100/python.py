import os

list = ['00','08','07','83','153','47','85','04']

for i in list :
    cmd = "wget http://www.ti.com/lit/ds/symlink/sn74ls"+i+".pdf"
    os.system(cmd)
