#!/usr/bin/python
# Import packages
import os
import sys

blast_file = sys.argv[1]


f1 = open(os.path.basename(blast_file) + '.filtered', 'a')
f1.write('qseqid\tqlen\tsseqid\tsacc\tstaxid\tslen\tqstart\tqend\tsstart\tsend\tevalue\tlength\tpident\tnident\tqseq\tsseq\n')


f2 = open(os.path.basename(blast_file) + '.filtered.seqnames', 'a')

# Has de añadir sólo los caracteres que están permitidos.     
allowed = { }

for line in open(blast_file, 'r'): 
    ls = line.split('\t')
    hit_seq = ls[15]
    if allowed.issuperset(hit_seq.rstrip('\n')):
        sacc = ls[3]
        f1.write(line)
        f2.write(sacc + '\n')
                
# Close the file
f1.close()
f2.close()
