class Phrase

  def initialize(phrase)
    @phrase = phrase.downcase.scan(/\b[\w']+\b/)
    # @phrase = phrase.downcase.split(' ').each do |element| element.gsub!(/[,:.!&@$%^&]/,'') end
  end

  def word_count
    word_arr = {}
    @phrase.each do |word|
      word_arr[word] += 1 if word_arr.has_key? word
      word_arr[word] = 1 if not word_arr.has_key? word
    end
    word_arr
  end
end
phrase = Phrase.new("word")
phrase = Phrase.new("one fish two fish red fish blue fish")
phrase = Phrase.new("one of each")
phrase = Phrase.new("one,two,three")
phrase = Phrase.new("one,\ntwo,\nthree")
phrase = Phrase.new("car: carpet as java: javascript!!&@$%^&")
phrase = Phrase.new("testing, 1, 2 testing")
phrase = Phrase.new("go Go GO Stop stop")
phrase = Phrase.new("Joe can't tell between 'large' and large.")
phrase = Phrase.new("multiple   whitespaces")
phrase.word_count
