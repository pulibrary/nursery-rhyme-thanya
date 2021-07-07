require 'rhyme'

describe Rhyme do
  let(:rhyme_file) { File.read("nursery_rhyme.txt") }

  describe "#to_s" do
    it "returns the nursery rhyme" do
      expect(subject.to_s).to match(rhyme_file)
    end
  end
end
