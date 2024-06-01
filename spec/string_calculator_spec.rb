require 'rspec'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe "#addition" do
    it "returns 0 for empty string" do
      expect(StringCalculator.new.add("")).to eq(0)
    end

    it "returns value itself" do
      expect(StringCalculator.new.add("1")).to eq(1)
    end
  end

end