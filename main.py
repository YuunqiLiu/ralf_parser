
from tkinter import Tcl

env_tcl_path = 'test.tcl'

with open(env_tcl_path,'r') as f:
    env_tcl_code = f.read()

tcl_interpreter = Tcl()
tcl_interpreter.eval(env_tcl_code)


key =  tcl_interpreter.eval('array names DEF')
print(key)
data = tcl_interpreter.eval('set DEF(B1)')
print('=========')
print(data)
#print(tcl_interpreter.register_list)
#data_list = data.split()
#setup = {data_list[i*2]:data_list[i*2+1] for i in range(int(len(data_list)/2))}