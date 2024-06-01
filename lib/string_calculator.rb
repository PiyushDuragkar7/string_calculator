require 'byebug'
class StringCalculator
  def add(nums)
    return 0 if nums.empty?

    delimiter, numbers = fetch_delimiter(nums)
    nums = check_neg_numbers(numbers, delimiter)
    sum_numbers(nums) unless nums.empty?
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

  def check_neg_numbers(numbers, delimiter)
    nums = numbers.split(delimiter).map(&:to_i)
    negative_numbers = nums.select { |n| n < 0 }
    raise "Negative numbers not allowed: #{negative_numbers.join(', ')}" unless negative_numbers.empty?
    nums if negative_numbers.empty?
  end

  def sum_numbers(nums)
    nums.sum
  end
end
