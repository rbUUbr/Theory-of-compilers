require './binary_tree'

include BinaryTree

$root = Node.new("<sentence>")
puts "Do you hear me?"
%w{Do you hear me?}.each.with_index do |word, index|
    $root.insert(Node.new(word), index)
end
Vps= [, "<noun>", "<subject>", "<predicate>", "<pronoun>", "<sentence>"]
$root.each do |node|
  puts "#{node.word} (#{node.count})"
end
i = 1
$root.each do |node|
	i += 1 
end
puts "#{$root.size} words. "
puts "#{$root.count_all} nodes."
