import re
table={}

with open('sample.txt','r') as f:
	for line in f.readlines():
		if re.match(r'(\w)*=((\d)*[+|-|*|\/](\d)*)*',line):
			evaluate=line.split("=")[1].split("\n")[0]
			if line.split("=")[0] not in table:
	
				table[line.split("=")[0]]=eval(evaluate)
	print(table)
with open('sample.txt','r') as f:

	for line in f.readlines():
		if not re.match(r'(\w)*=((\d)*[+|-|*|\/](\d)*)*',line):
			for key in table.keys():
				#print(key)
				if key in line:
					print(line.replace(key,str(table[key])))
"""
sample.txt


xyz=2*5*30
b=50*60
for i in range (0 , xyz * 25) :
	print(i)



"""
			
			
