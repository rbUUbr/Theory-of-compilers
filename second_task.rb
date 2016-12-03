require './binary_tree'

include BinaryTree
Vps= ["<predicate>", "<pronoun>", "<verb>", "<noun>", "<subject>"]
$root = Node.new("<sentence>")
i = 0
Vps.each do |word|
	$root.insert(Node.new(word), i)
	i += 1
end 
puts "Do you hear me?"
$root.each do |node|
	case node.word
	when "<predicate>"
		node.insert(Node.new("hear"), 1)
		node.insert(Node.new("do"), 0)
	when "<pronoun>"
		node.insert(Node.new("you"), 1)
	end
  puts "#{node.word} (#{node.count})"
end
p $root
i = 1
$root.each do |node|
	print "#{node.word}  "
	i += 1 
end
puts "#{$root.size} words. "
puts "#{$root.count_all} nodes."
