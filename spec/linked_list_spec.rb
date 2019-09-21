require 'spec_helper'

RSpec.describe Stack, type: :model do
  describe "Stack implementation" do
    it "should validate push method" do
      stack = Stack.new
      stack.push(-30)  
      stack.push(0)
      stack.push(44)
      result = stack.stack_to_array(stack.data, []).join('')
      expect(result).to eq "44 --> 0 --> -30 --> nil"
    end

    it "should validate pop method" do
      stack = Stack.new
      stack.push(-30)  
      stack.push(0)
      stack.push(44)
      stack.pop
      result = stack.stack_to_array(stack.data, []).join('')
      expect(result).to eq "0 --> -30 --> nil"
    end

    it "should validate reverse_list method" do
      stack = Stack.new
      stack.push(-30)  
      stack.push(0)
      stack.push(44)
      reversed_list = stack.reverse_list(stack.data)
      result = stack.stack_to_array(reversed_list.data, []).join('')
      expect(result).to eq "-30 --> 0 --> 44 --> nil"
    end
  end
end
