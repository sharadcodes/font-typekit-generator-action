import glob
import subprocess
import sys
import os


for file in glob.glob("%s/*.ttf" %(sys.argv[1])):
	print(file)
	file_name = str(os.path.basename(file).split(".")[0] + ".css")
	print(subprocess.Popen(['webfont-generator/bin/generate-webfonts %s -o %s --css %s' %(file,sys.argv[2],file_name)], shell = True))
