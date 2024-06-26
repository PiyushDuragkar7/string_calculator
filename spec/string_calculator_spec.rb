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

    it 'returns the sum of the numbers with diffeerent delimiter' do
      expect(string_calculator.add("//;\n1;2")).to eq(3)
    end

    it 'returns exception for negative numbers ' do
      expect{string_calculator.add("1, -2, 3") }.to raise_error(RuntimeError, "Negative numbers not allowed: -2")
      expect{string_calculator.add("-1, -3, -4, 5")}.to raise_error(RuntimeError, "Negative numbers not allowed: -1, -3, -4")
    end
  end

end