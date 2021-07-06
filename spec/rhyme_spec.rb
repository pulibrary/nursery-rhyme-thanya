require 'rhyme'

describe Rhyme do
  let(:rhyme_file) { File.read("nursery_rhyme.txt") }

  it "returns the nursery rhyme" do
    expect(subject).to match(rhyme_file)
  end
end
