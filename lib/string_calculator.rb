require 'byebug'
class StringCalculator
  def add(nums)
    return 0 if nums.empty?

    delimiter, numbers = fetch_delimiter(nums)
    sum_numbers(numbers, delimiter)
  end

  def fetch_delimiter(numbers)
    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
      delimiter = Regexp.escape(delimiter)
    else
      delimiter = /[,\n]/
    end
    [delimiter, numbers]
  end

  def sum_numbers(numbers, delimiter)
    nums = numbers.split(delimiter).map(&:to_i)
    nums.sum
  end
end
