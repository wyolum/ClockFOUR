
from PIL import Image
import sys

colour = True
height = 0
width = 0
	
	
def printColour(pixels, dst, width, height):
	for y in range(height):
		dst.write("\t")
		for x in range(width):
			vals = pixels[x, y]
			dst.write("0x%02x, 0x%02x, 0x%02x, " % vals)
		dst.write("\n")

		
def printBW(pixels, dst, width, height):
	byte = 0
	bitIdx = 0
	dst.write("\t")
	for y in range(height):
		for x in range(width):
			vals = pixels[x, y]
			avg = (vals[0] + vals[1] + vals[2]) / 3
			if avg >= 128:
				byte |= (1 << (7 - bitIdx))
			bitIdx += 1
			if bitIdx >= 8:
				bitIdx = 0
				dst.write("0x%02x, " % byte)
				byte = 0
				
	if bitIdx != 0:
		dst.write("0x%02x, " % byte)
				

			
def convert2h(filename):
	fileExtLen = 0
	if filename.endswith('.bmp') or filename.endswith('.jpg') or filename.endswith('.png'):
		fileExtLen = 4
	elif filename.endswith('.jpeg'):
		fileExtLen = 5
	else:
		print("Sorry, image format not supported\n\n")

	img = Image.open(filename)
	width = img.size[0]
	height = img.size[1]
	pixels = img.load()
		
	dst = open(filename[:-fileExtLen] + ".h", 'w')
	if colour:
		dst.write("const uint8_t %s_c_bmp[] PROGMEM = {\n" % filename[:-fileExtLen])
	else:
		dst.write("const uint8_t %s_bw_bmp[] PROGMEM = {\n" % filename[:-fileExtLen])
	dst.write("\t%d,\n\t%d,\n" % (width, height))
	
	if colour:
		printColour(pixels, dst, width, height)
	else:
		printBW(pixels, dst, width, height)
	
	dst.write("\n};\n\n")
	
	
def printUsage():
	print("Incorrect usage. Should be:")
	print("bmp2h.py <file name>.bmp [b]")
	print("")
	print("<file name>    Name of the file to be converted.")
	print("[b]            Optional. If given, output is black and white.\n\n")
	
	
if __name__ == '__main__':
	if len(sys.argv) < 2:
		printUsage()
		
	elif len(sys.argv) == 3:
		if sys.argv[2] == 'b':
			colour = False
		else:
			printUsage()
			
	elif len(sys.argv) > 3:
		printUsage()
		
	convert2h(sys.argv[1])