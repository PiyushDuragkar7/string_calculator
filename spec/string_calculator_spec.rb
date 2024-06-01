require 'rspec'
require_relative '/lib/string_calculator'

RSpec.describe StringCalculator do
  describe "#addition" do
    it "returns 0" do
      cal = StringCalculator.new
      expect(cal.add).to eq(0)
    end
  end

end