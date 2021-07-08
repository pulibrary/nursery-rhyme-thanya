require 'rhyme'

describe Rhyme do
  let(:rhyme_file) { File.read("nursery_rhyme.txt") }
  let(:random_rhyme_file) { File.read("random_nursery_rhyme.txt") }
  let(:semi_random_rhyme_file) { File.read("semi_random_nursery_rhyme.txt") }

  describe "#recite" do
    it "returns the nursery rhyme in order" do
      rhyme = Rhyme.new
      expect(rhyme.recite).to match(rhyme_file)
    end

    it "returns the nursery rhyme in a random order" do
      rhyme = Rhyme.new(:random)
      shuffled_clauses = [8, 6, 11, 0, 5, 7, 1, 9, 10, 4, 3, 2].map do |clause_index|
        Rhyme::CLAUSES[clause_index]
      end
      allow_any_instance_of(Array).to receive(:shuffle).and_return(shuffled_clauses)
      expect(rhyme.recite).to match(random_rhyme_file)
    end

    it "returns the nursery rhyme in a semi-random order" do
      rhyme = Rhyme.new(:semi_random)
      order = [4, 9, 8, 2, 5, 10, 1, 3, 7, 11, 6].map do |clause_index|
        Rhyme::CLAUSES[clause_index]
      end
      allow_any_instance_of(Array).to receive(:shuffle).and_return(order)
      expect(rhyme.recite).to match(semi_random_rhyme_file)
    end
  end
end
