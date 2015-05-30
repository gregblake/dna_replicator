class DNAReplicator
  
  def replicate(dna_sequence)
    @complementary_strand = ""
    dna_sequence.each_char do |c|
      add_character_to_complimentary_strand(c)
    end
    @complementary_strand
  end

  def add_character_to_complimentary_strand(character)
    if INPUTS_AND_COMPLIMENTS.has_key?(character)
      add_value_to_strand(character)
    end
  end

  def add_value_to_strand(character)
    @complementary_strand << INPUTS_AND_COMPLIMENTS[character]
  end

  INPUTS_AND_COMPLIMENTS = { 
    "A" => "T", 
    "T" => "A", 
    "C" => "G", 
    "G" => "C" 
  }

end