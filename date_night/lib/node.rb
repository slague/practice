
class Node

  attr_accessor :left, :right
  attr_reader :value, :title

  def initialize(value, title)
    @value = value
    @title = title
    @right = nil
    @left = nil
  end


  # def build(new_value, new_title)
  #   if @value == new_value
  #     "Unable to build node. Value already exists."
  #
  #   elsif new_value < @value
  #     if @left.nil?
  #       @left = Node.new(new_value, new_title)
  #     else
  #       @left.build(new_value, new_title)
  #     end
  #
  #   else
  #     if @right.nil?
  #       @right = Node.new(new_value, new_title)
  #     else
  #       @right.build(new_value, new_title)
  #     end
  #   end
  #
  # end



end
