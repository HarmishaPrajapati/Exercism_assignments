# ResistorColorDuo class
class ResistorColorDuo
  def self.value(str)
    status = {  0 => 'black', 1 => 'brown', 2 => 'red', 3 => 'orange',
                4 => 'yellow', 5 => 'green', 6 => 'blue', 7 => 'violet',
                8 => 'grey', 9 => 'white' }
                
    if status.values.include?(str.first && str.last)
      ("#{status.key(str.first)}" + "#{status.key(str.last)}").to_i
    end
  end
end

# ResistorColorDuo.value(%w[brown black])
