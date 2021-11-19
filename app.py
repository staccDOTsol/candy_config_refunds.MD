with open ('cms.csv', 'r') as f:
	lines = f.read().split('\n')
t = 0
c = 0
for l in lines:
	try:
		t = t + float(l)
		c = c + 1
	except:
		abc=123
print('You have ' + str(t/1000000000) + ' SOL locked in ' + str(c) + ' configs :)')