class Brackets
  def self.paired?(string)
    stack = []

    string.each_char do |c|
      case c
      when '(', '{', '['
        stack.push c
      when ')'
        return false unless '(' == stack.pop
      when '}'
        return false unless '{' == stack.pop
      when ']'
        return false unless '[' == stack.pop
      else
        # Ignore
      end
    end

    stack.empty?
  end
end
