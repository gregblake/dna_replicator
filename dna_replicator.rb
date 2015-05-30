class DNAReplicator
  def replicate(dna_sequence)
    complementary_strand = ""
    dna_sequence.each_char do |c|
      if c == "A"
        complementary_strand << "T"
      elsif c == "T"
        complementary_strand << "A"
      elsif c == "C"
        complementary_strand << "G"
      elsif c == "G"
        complementary_strand << "C"
      end
    end
    complementary_strand
  end
end