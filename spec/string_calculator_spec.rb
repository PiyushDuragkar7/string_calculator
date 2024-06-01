require 'rspec'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  string_calculator = StringCalculator.new

  describe "#addition" do
    it "returns 0 for empty string" do
      expect(string_calculator.add("")).to eq(0)
    end

    it "returns value itself" do
      expect(string_calculator.add("1")).to eq(1)
    end

    it "returns sum of values" do
      expect(string_calculator.add("1, 5")).to eq(6)
      expect(string_calculator.add("4, 5")).to eq(9)
    end

    it "returns sum of numbers for new lines between numbers" do
      expect(string_calculator.add("1\n2,3")).to eq(6)
    end
  end

end