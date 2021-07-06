class Rhyme
  def initialize
    @blanks = []
    add_all_blanks
  end

  def add_blank(subject, action)
    blank = {"subject": subject, "action": action}
    @blanks.push(blank)
  end

  def add_all_blanks
    add_blank("house", "Jack built")
    add_blank("malt", "lay in")
    add_blank("rat", "ate")
    add_blank("cat", "killed")
    add_blank("dog", "worried")
    add_blank("cow with the crumpled horn", "tossed")
    add_blank("maiden all forlorn", "milked")
    add_blank("man all tattered and torn", "kissed")
    add_blank("priest all shaven and shorn", "married")
    add_blank("rooster that crowed in the morn", "woke")
    add_blank("farmer sowing his corn", "kept")
    add_blank("horse and the hound and the horn", "belonged to")
  end

  def to_s
    rhyme = ""
    clause = "."
    @blanks.each do |blank|
      clause.prepend(" the #{blank[:subject]} that #{blank[:action]}")
      rhyme << "This is" + clause + "\n"
    end
    return rhyme
  end
end
