class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end


def reverse_list(list, previous=nil)
  while list #node 3
    new_head = list
    saved_next = list.next_node #saved_next is node 2, list_next_node = 2
    list.next_node = previous #nil during fitst loop
    
    previous = list
    list = saved_next
  end
  return new_head
end

def print_values(list_node)
  while list_node
    print "#{list_node.value} --> "
    list_node = list_node.next_node
  end
  puts "nil"
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


print_values(node3)
puts "---------"
new_head = reverse_list(node3)
print_values(new_head)