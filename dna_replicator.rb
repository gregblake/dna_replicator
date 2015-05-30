class DNAReplicator
  def replicate(dna_sequence)
    @complementary_strand = ""
    dna_sequence.each_char do |c|
      if INPUTS_AND_COMPLIMENTS.has_key?(c)
        @complementary_strand << INPUTS_AND_COMPLIMENTS[c]
      end
    end
    @complementary_strand
  end

  INPUTS_AND_COMPLIMENTS = { 
    "A" => "T", 
    "T" => "A", 
    "C" => "G", 
    "G" => "C" 
  }

end