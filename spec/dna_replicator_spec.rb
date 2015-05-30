require './dna_replicator'

RSpec.describe DNAReplicator do
  it "takes a DNA sequence as input and returns the complementary strand" do
    d = DNAReplicator.new
    expect(d.replicate("AATGCCTATGGC")).to eq("TTACGGATACCG")
  end

  it "takes a second DNA sequence as input and returns the complementary strand" do
    d = DNAReplicator.new
    expect(d.replicate("AATG")).to eq("TTAC")
  end
end