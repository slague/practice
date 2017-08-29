require_relative 'node'

class BinarySearchTree

  def initialize
    @root_node = nil
    @total_nodes = 0
  end

  def insert(value, title)
    @total_nodes += 1
    if @root_node == nil
      @root_node = Node.new(value, title)
    else
      @root_node.build(value, title)
    end
    # @total_nodes
  end



end


tree = BinarySearchTree.new

p tree.insert(61, "Bill & Ted's Excellent Adventure")
p tree.insert(16, "Johnny English")
p tree.insert(92, "Sharknado 3")
p tree.insert(50, "Hannibal Buress: Animal Furnace")
