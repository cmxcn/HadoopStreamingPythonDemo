#!usr/bin/env python3
import sys
from itertools import groupby
from operator import itemgetter
def read_mapper_output(file, separator='\t'):
	for line in file:
		yield line.strip().split(separator, 1)
		
def main(separator='\t'):
	data = read_mapper_output(sys.stdin, separator)
	for current_word, current_group in groupby(data, itemgetter(0)):
		try:
			total_count = sum(int(vv) for kk,vv in current_group)
			print(current_word, separator, total_count)
		except ValueError:
			continue
if __name__=='__main__':
	main()

			
