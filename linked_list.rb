class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end 
end

class Stack
    attr_accessor :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        if self.data.nil?
          self.data = LinkedListNode.new(value)
        else
          self.data = LinkedListNode.new(value, data)
        end  
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        value = self.data.value
        self.data = self.data.next_node
        value
    end
end

# TEST 
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
