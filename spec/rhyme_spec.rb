require 'rhyme'

describe Rhyme do
  let(:rhyme_file) { File.read("nursery_rhyme.txt") }
  let(:random_rhyme_file) { File.read("random_nursery_rhyme.txt") }

  describe "#in_order" do
    it "returns the nursery rhyme in order" do
      expect(subject.in_order).to match(rhyme_file)
    end
  end

  describe "#in_random_order" do
    it "returns the nursery rhyme in a random order" do
      rhyme = Rhyme.new
      order = [8, 6, 11, 0, 5, 7, 1, 9, 10, 4, 3, 2] 
      allow(rhyme).to receive(:random_order).and_return(order)
      expect(rhyme.in_random_order).to match(random_rhyme_file)
    end
  end
end
