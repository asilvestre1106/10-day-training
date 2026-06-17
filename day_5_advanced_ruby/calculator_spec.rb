require_relative "calculator"

describe Calculator do 
  it "adds two numbers" do
      calculator = Calculator.new 

      result = calculator.add(2, 3)

      expect(result).to eq(6)
  end
  it "subtracts two numbers" do
    calculator = Calculator.new

    result = calculator.subtract(10, 3)

    expect(result).to eq(2)
  end
end
