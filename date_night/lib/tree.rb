require_relative 'node'

#when to use @ again...
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

  # def include?(value)
  #   @entered_nodes.values.include?(value)
  # end
  def include?(value, node=@root_node)
    if node.value == value
      return true
    elsif value < node.value
        if node.left.nil?
          return false
        else
          include?(value, node.left)
        end
    else
      if node.right.nil?
        return false
      else
        include?(value, node.right)
      end
    end
  end

  def depth_of(value, node=@root_node)


    # if node.value == value
    #   return 0
    # elsif value < node.value
    #   height +=1
    #   return height
    # end


  end

  def max(node=@root_node)

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
