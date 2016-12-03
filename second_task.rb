require './binary_tree'

include BinaryTree

$root = Node.new("<sentence>")
%w{Do you hear me?}.each.with_index do |word, index|
    $root.insert(Node.new(word), index)
end
puts "Vп= {<sentence>, <subject>, <predicate>, <pronoun>}"
$root.each do |node|
  puts "#{node.word} (#{node.count})"
end
puts "#{$root.size} words. "
puts "#{$root.count_all} nodes."