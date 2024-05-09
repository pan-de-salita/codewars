# frozen_string_literal: true

# Deoxyribonucleic acid, DNA is the primary information storage molecule in
# biological systems. It is composed of four nucleic acid bases Guanine ('G'),
# Cytosine ('C'), Adenine ('A'), and Thymine ('T').
#
# Ribonucleic acid, RNA, is the primary messenger molecule in cells. RNA differs
# slightly from DNA; its chemical structure and contains no Thymine. In RNA Thymine
# is replaced by another nucleic acid Uracil ('U').
#
# Create a function which translates a given DNA string into RNA.

# iter 1
# def dna_to_rna(dna)
#   dna.chars.map { |char| char == 'T' ? 'U' : char }.join
# end

# iter 2
def dna_to_rna(dna)
  dna.tr('T', 'U')
end
