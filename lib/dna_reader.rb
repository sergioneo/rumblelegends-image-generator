class DnaReader

	def self.catch_gene (dna, length)
		return dna % 2**length
	end

	def self.remove_gene (dna, length)
		return dna / 2**length
	end

	def self.dna_read_dino (dna)

		attrListDinosaur = ["colorCombination", "beastType", "ability", "secondAbility", "pedigree", "element", "type", "eyes", "nose", "mouth", "tail", "plume", "legs", "spikes", "wings"]
		attrLengthDinosaurs = [6, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5]
		dnaBig = BigDecimal(dna)

		return decypher(dnaBig, attrListDinosaur.reverse, attrLengthDinosaurs.reverse)
	end

	def self.dna_read_uni (dna)

		attrListUnicorn = ["colorCombination", "beastType", "ability", "secondAbility", "pedigree", "element", "type", "eyes", "horn", "hair", "tail", "snout", "legs"]
		attrLengthUnicorns = [6, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5]
		dnaBig = BigDecimal(dna)

		return decypher(dnaBig, attrListUnicorn.reverse, attrLengthUnicorns.reverse)
	end

	def self.decypher(dna, attrList, attrLength)
		result = Hash.new
		parsedDna = dna
		attrList.each_with_index do |attribute, i|
			bitLength = attrLength[i]
			gene = catch_gene(parsedDna, bitLength)
			parsedDna = remove_gene(parsedDna, bitLength)
			result[attribute.to_sym] = gene.truncate(0).to_i.to_s
		end
		return result
	end

end