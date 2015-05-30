class DNAReplicator
  def replicate(dna_sequence)
    @complementary_strand = ""
    dna_sequence.each_char do |c|
     add_character_to_complimentary_strand(c)
    end
    @complementary_strand
  end

  def add_character_to_complimentary_strand(character)
    complements_for_a_and_t(character)
    complements_for_c_and_g(character)
  end

  def complements_for_a_and_t(character)
    complements_for_a(character)
    complements_for_t(character)
  end

  def complements_for_a(character)
    if character == "A"
      @complementary_strand << "T"
    end
  end

  def complements_for_t(character)
    if character == "T"
      @complementary_strand << "A"
    end
  end

  def complements_for_c_and_g(character)
    complements_for_c(character)
    complements_for_g(character)
  end

  def complements_for_c(character)
    if character == "C"
      @complementary_strand << "G"
    end
  end

  def complements_for_g(character)
    if character == "G"
      @complementary_strand << "C"
    end
  end
end