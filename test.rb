require './binary_tree'

include BinaryTree

$root = nil
$root = Node.new("<sentence>")
%w{Do you hear me?}.each.with_index do |word, index|
  if $root.nil?
    $root = Node.new("<sentence>")
  else
    $root.insert(Node.new(word), index)
  end
end

$root.each do |node|
  puts "#{node.word} (#{node.count})"
end

puts
puts "#{$root.size} words."
p $root
puts "#{$root.count_all} nodes."