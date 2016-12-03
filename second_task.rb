require './do'
require './binary_tree.rb'
include BinaryOperations
include BinaryTree
VPS= ["<predicate>","<subject>", "<verb>","<pronoun>"]
$root = Node.new("<sentence>")
def output 
  puts "VP = #{VPS}"
	puts "Vi = #{%w(Do you hear me?)}"
	puts "S = <sentence>"
	puts "{1.<sentence>::=<predicate><subject>,
	2.<predicate>::=<verb><auxilliary>,
	3.<subject>::=<pronoun>,
	4.<verb>::=hear!do,
	5.<pronoun>::=you!me}"	
end
$root = input_to_tree_not_terminated 
$root = put_all_to_tree
output
puts "down:"
make_first_subtask
puts "rising:"
make_second_subtask