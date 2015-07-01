#!/usr/bin/env python3

import sys

#input comes from STDIN
def read_input(file):
	for line in file:
		yield line.strip().split()

def main(separator='\t'):
	
	data = read_input(sys.stdin)
	for words in data:
		for word in words:
			print('{0}{1}1'.format(word, separator)) 

if __name__ == "__main__":
	main()	
