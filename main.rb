# frozen_string_literal: true

require_relative 'lib/tree'
require_relative 'lib/node'

array = (Array.new(15) { rand(1..100) })
tree = Tree.new(array)
tree.pretty_print