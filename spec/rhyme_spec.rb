require 'rhyme'

describe Rhyme do
  let(:rhyme_file) { File.read("nursery_rhyme.txt") }
  let(:random_rhyme_file) { File.read("random_nursery_rhyme.txt") }

  describe "#recite" do
    it "returns the nursery rhyme in order" do
      expect(subject.recite).to match(rhyme_file)
    end
    
    it "returns the nursery rhyme in a random order" do
      rhyme = Rhyme.new
      order = [8, 6, 11, 0, 5, 7, 1, 9, 10, 4, 3, 2] 
      allow(rhyme).to receive(:generate_order).and_return(order)
      expect(rhyme.recite('random')).to match(random_rhyme_file)
    end
  end
end
