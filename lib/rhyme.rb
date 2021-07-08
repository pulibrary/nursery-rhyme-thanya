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

  def generate_order(ordering)
    case ordering
    when 'random'
      (0..clauses.length - 1).to_a.sample(clauses.length)
    else
      (0..clauses.length - 1).to_a
    end
  end

  def recite(ordering = 'in order')
    rhyme = ""
    body = "."
    order = generate_order(ordering)

    order.each do |index|
      body.prepend(" " + clauses[index])
      rhyme << "This is" + body + "\n"
    end
    rhyme
  end
end
