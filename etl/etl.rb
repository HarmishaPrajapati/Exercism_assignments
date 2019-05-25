class ETL
  def self.transform(old)
    old.each_with_object({}) do |(score, letters), transformed|
      letters.each do |letter|
        transformed[letter.downcase] = score
      end
    end
  end
end

puts ETL.transform(1 => ["A", "E"], 2 => ["D", "G"])
