import re

with open('abc.txt','r') as f:
	for line in f.readlines():
		if re.match(r'(\w)*=((\d)*[+|-|*|\/](\d)*)*',line):
			evaluate=line.split("=")[1].split("\n")[0]
			print("print("+str(eval(evaluate))+")")
			
			
			
