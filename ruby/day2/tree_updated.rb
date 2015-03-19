# Update Tree class to accept nested structure of hashes.

class Tree
  attr_accessor :tree, :node_name

  def initialize(name, tree={})
    @tree = tree
    @node_name = name
  end

  def visit_all(&block)
    visit &block
    tree.each {|key, value|
      if value.is_a?(Hash)
        temp_tree = Tree.new(key, value)
        temp_tree.visit_all &block
      end
    }
  end

  def visit(&block)
      block.call self
  end
end

ruby_tree = Tree.new( "Ruby",
  {'grandpa' => {
    'dad' => {'child1' => {}, 'child2' => {} },
    'uncle' => {'child3' => {}, 'child4' => {} }
    } })

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}
