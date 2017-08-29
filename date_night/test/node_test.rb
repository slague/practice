require 'minitest/autorun'
# require './lib/tree'
require_relative './lib/node'
require 'minitest/pride'



class NodeTest < Minitest::Test

  def test_if_node_is_valid
    node = Node.new(100, "Jaws")
    assert_equal 100, node.value
    assert_equal "Jaws", node.title
    assert_nil node.left
    assert_nil node.right
  end

  def test_build
    node = Node.new(100, "Jaws")
    node.build(75, "Titanic")
    assert_equal node.left.value, 75
    assert_equal node.left.title, "Titanic"
  end

end
