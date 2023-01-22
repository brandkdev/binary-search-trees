# frozen_string_literal: true

require_relative './node'

# tree structure in which nodes are specified
class Tree
  attr_reader :root

  def initialize(array)
    @tree_array = array.sort.uniq
    @root = build_tree(@tree_array, 0, array.length - 1)
    @end_array = @tree_array.length - 1
  end

  def build_tree(array = @tree_array, start = 0, end_array = @end_array)
    if start > end_array
      nil
    else
      mid = (start + end_array) / 2
      root = Node.new(array[mid])
      root.left = build_tree(array, start, mid - 1)
      root.right = build_tree(array, mid + 1, end_array)
      root
    end
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.value}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end

  # accept a value to insert
  def insert(value)
  end

  # accept a value to delete
  def delete(value)
  end

  # accept a value & return node at given value
  def find(value)
  end

  # traverse the tree in breadth-first level order and yields each node to the provided block. returns array of nodes if no block is given
  # note to me: use an array that acts as a queue to keep track of all child nodes yet to traverse
  def level_order(&block)
  end

  # left -> node -> right
  def inorder(&block)
  end

  # node -> left -> right
  def preorder(&block)
  end

  # left -> right -> node
  def postorder(&block)
  end

  # accept a node, return height (number of edges in the longest path from a given node to a leaf node)
  def height(node)
  end

  # accept a node, return depth (number of edges in path from given node to tree's root node)
  def depth(node)
  end

  # checks if tree is balanced. (diff. between heights of left subtree and right subtree of every node is not more than 1)
  def balanced?
  end

  # rebalance an unbalanced tree
  def rebalance
  end
end
