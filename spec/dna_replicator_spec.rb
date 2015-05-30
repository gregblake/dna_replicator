require './dna_replicator'

RSpec.describe DNAReplicator do
  it "takes a DNA sequence as input and returns the complementary strand" do
    d = DNAReplicator.new
    expect(d.replicate("A A T G C C T A T G G C")).to eq("T T A C G G A T A C C G")
  end
end