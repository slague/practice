require 'minitest/autorun'
require './lib/tree'
require './lib/node'
require 'minitest/pride'



class BinarySearchTreeTest < Minitest::Test

  def skip_test_insert
    tree = BinarySearchTree.new
    tree.insert(50, "Jaws")
    tree.insert(20, "Titanic")
    tree.insert(80, "Star Wars")
    assert_equal 1, tree.insert(50, "Jaws")
    assert_equal 2, tree.insert(20, "Titanic")
    assert_equal 2, tree.insert(80, "Start Wars")
  end

  def test_include?
    tree = BinarySearchTree.new
    tree.insert(50, "Jaws")
    tree.insert(20, "Titanic")
    assert tree.include?(50)
    refute tree.include?(70)
  end
end
