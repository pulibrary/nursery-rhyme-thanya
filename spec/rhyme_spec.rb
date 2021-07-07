require 'rhyme'

describe Rhyme do
  let(:rhyme_file) { File.read("nursery_rhyme.txt") }

  describe "#in_order" do
    it "returns the nursery rhyme in order" do
      expect(subject.in_order).to match(rhyme_file)
    end
  end

  describe "#random_order" do
    it "returns the nursery rhyme in a random order" do
      expect(subject.random_order).to match(rhyme_file)
    end
  end
end
