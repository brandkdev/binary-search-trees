# frozen_string_literal: true

require_relative './tree'

# this class handles each node and specifies value & each child (left and right) if applicable.
class Node
  attr_accessor :value, :left, :right

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end
end
