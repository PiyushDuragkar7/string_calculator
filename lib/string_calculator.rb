require 'byebug'
class StringCalculator

  def add(num)
    return 0 if num.empty?

    num.gsub("\n", ",").split(',').map{|val| val.to_i}.sum
  end
end
