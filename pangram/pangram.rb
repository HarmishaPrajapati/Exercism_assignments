class Pangram

  ALPHA = ('a'..'z')

  def self.pangram?(str)
    str.downcase!
    if ALPHA.all? { |letter|  str.include?(letter) }
      return true
    else
      return false
    end
  end

end

# Pangram.pangram?("thequickbrownfoxjumpsoverthelazydog")
# Pangram.pangram?("thequickbrownfoxjump")
