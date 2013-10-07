require 'spec_helper'
require_relative '../lib/fib'

describe '#fibonacci' do
	
	it "should have a method called fibonacci" do
		expect(method(:fibonacci))
	end

	it "should have a parameter, n" do
		parameters = method(:fibonacci).parameters
		expect(parameters[0]).to include(:req)
		expect(parameters[0]).to include(:n)
		expect(parameters.length).to eq 1
	end

	it "should give an error if argument, n, is anything but an integer" do
		expect{fibonacci(false)}.to raise_error(NoMethodError)
		expect{fibonacci([3,4])}.to raise_error(NoMethodError)
		expect{fibonacci(9.8)}.to raise_error(NoMethodError)
    expect{fibonacci('hello')}.to raise_error(NoMethodError)
  end

	it "should return n numbers of the fibonacci series in an array" do
		expect(fibonacci(0)).to eq []
		expect(fibonacci(1)).to eq [0]
		expect(fibonacci(2)).to eq [0,1]
		expect(fibonacci(6)).to eq [0,1,1,2,3,5]
		expect(fibonacci(10)).to eq [0,1,1,2,3,5,8,13,21,34]
		expect(fibonacci(14)).to eq [0,1,1,2,3,5,8,13,21,34,55,89,144,233]
		expect(fibonacci(18)).to eq [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597]	
	end


end