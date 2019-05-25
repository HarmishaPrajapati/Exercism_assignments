class Atbash
	def self.encode(input)
    return input.downcase.tr("abcdefghijklmnopqrstuvwxyz", "zyxwvutsrqponmlkjihgfedcba")
                            .gsub(/[^a-z0-9]/, "").scan(/\w{1,5}/).join(" ")
	end
end