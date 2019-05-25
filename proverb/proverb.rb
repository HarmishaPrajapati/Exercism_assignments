class Proverb
  def initialize(*words, qualifier: nil)
    @words = words
    @qualifier = qualifier
  end

  def to_s
    @words
      .each_cons(2)
      .map { |a, b| "For want of a #{a} the #{b} was lost." }
      .push("And all for the want of a #{last_word}.")
      .join("\n")
  end

  private

  def last_word
    [@qualifier, @words.first].compact.join(" ")
  end
end

# Proverb.new('nail','shoe')
# Proverb.new('nail','shoe', 'horse')
# Proverb.new('nail','shoe', 'horse', 'rider')
# Proverb.new('nail','shoe')
# Proverb.new('nail shoe horse rider message battle kingdom')
