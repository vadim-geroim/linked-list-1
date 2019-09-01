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

# node1 = LinkedListNode.new(37)
# node2 = LinkedListNode.new(99, node1)
# node3 = LinkedListNode.new(12, node2)

# print_values(node3)

# 12 --> 99 --> 37 --> nil

# [37, nil]
# [99, [37, nil]]
# [12, [99, [37, nil]]]

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
        # I RETURN A VALUE
    end

end

stack = Stack.new
stack.push(1)
stack.push(5)
stack.push(10)

print_values(stack.data)



