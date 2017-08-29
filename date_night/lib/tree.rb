require_relative 'node'

class BinarySearchTree

  attr_accessor :root_node, :values, :total_nodes
  def initialize
    @root_node = nil
    @total_nodes = 0
    @entered_nodes = {}
  end

  def insert(value, title)
    @total_nodes += 1
    if @root_node == nil
      @root_node = Node.new(value, title)
      @entered_nodes[title] = value
    else
      root_node.build(value, title)
      @entered_nodes[title] = value
    end
  end

  def include?(value)
    @entered_nodes.values.include?(value)
  end

  def depth_of(value)

  end

  def max
    max = {}
    max_val = @entered_nodes.values.max
    max_title = @entered_nodes.key(max_val)
    max[max_title] = max_val
    max
  end

  def min
    min = {}
    min_val = @entered_nodes.values.min
    min_title = @entered_nodes.key(min_val)
    min[min_title] = min_val
    min
  end

end


tree = BinarySearchTree.new

 tree.insert(61, "Bill & Ted's Excellent Adventure")
 tree.insert(16, "Johnny English")
 tree.insert(92, "Sharknado 3")
 tree.insert(50, "Hannibal Buress: Animal Furnace")

p tree.include?(50)
p tree.include?(26)

# p tree.root_node
# p tree.values
p tree.max
p tree.min
