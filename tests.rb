require_relative 'linked_list'

### TEST 1: Verify pop and push methods ###
puts("### TEST 1: Verify pop and push methods ###")
puts
stack = Stack.new
stack.push(1)
stack.push(5)
stack.push(10)
stack.push(-1)
stack.push(77)
puts("### Print Stack ###")
print_values(stack.data)
puts

puts("### Print items off the stack ###")
puts stack.pop
puts stack.pop
puts

puts("### Print Stack Result  ###")
print_values(stack.data)
puts

### TEST 2: Verify reverse_list method ###
puts("### TEST 2: Verify reverse_list method ###")
puts
stack = Stack.new
stack.push(1)
stack.push(5)
stack.push(10)
stack.push(-1)
stack.push(77)
puts("### Print Stack ###")
print_values(stack.data)
puts

puts("### Print Reverse Stack ###")
revlist = reverse_list(stack.data)
print_values(revlist.data)