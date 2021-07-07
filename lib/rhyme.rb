class Rhyme
  def clauses
    [ "the house that Jack built",
      "the malt that lay in",
      "the rat that ate",
      "the cat that killed",
      "the dog that worried",
      "the cow with the crumpled horn that tossed",
      "the maiden all forlorn that milked",
      "the man all tattered and torn that kissed",
      "the priest all shaven and shorn that married",
      "the rooster that crowed in the morn that woke",
      "the farmer sowing his corn that kept",
      "the horse and the hound and the horn that belonged to" ] 
  end

  def in_order
    rhyme = ""
    body = "."
    clauses.each do |clause|
      body.prepend(" " + clause)
      rhyme << "This is" + body + "\n"
    end
    rhyme
  end

  def random_order
    rhyme = ""
    body = "."

    # generate a random ordering of the numbers from 0 to clauses.length
    order = (0..clauses.length - 1).to_a.sample(clauses.length)

    order.each do |index|
      body.prepend(" " + clauses[index])
      rhyme << "This is" + body + "\n"
    end
    rhyme
  end
end

puts Rhyme.new.random_order
