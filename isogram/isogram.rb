class Isogram
  def self.isogram?(input)
    input.downcase!
    ('a'..'z').each do |letter|
      return false if input.count(letter) > 1
    end
    return true
  end
end
# Isogram.isogram?("isogram")
# Isogram.isogram?("abcabc")
