f = open('data.txt')
line = f.readline()

default_initials = open("default.scad", "r")
default_initials = default_initials.read()

template = open("template.scad", "r")
template = template.read()

output = open('whistles1.scad', 'w');
output.write(default_initials);

row = 1;
col = 1;
filenr = 1;
print "FILE NR1\n";
print "================================ \n";
while line:
	initials = "l"+str(row)+str(col)+" = \""+line[0]+line[1]+"\";\n";
	output.write(initials);
	print initials;
	col = col+1;
	if (col == 4):
		row = row + 1;
		col = 1;
		if (row == 5):
			output.write(template);
			output.close();
			row = 1
			filenr = filenr + 1;
			output = open("whistles"+str(filenr)+".scad", 'w');
			output.write(default_initials);
			print "FILE NR"+str(filenr)+"\n";
			print "================================ \n";
			
	line = f.readline()
output.write(template);
output.close();
f.close()