require './binary_tree.rb'
module BinaryOperations
	def input_to_tree_not_terminated
		VPS.each do |word|
			$root.insert(Node.new(word), i)
			i += 1
		end 
	end
	puts "Do you hear me?"
	def put_all_to_tree
		$root.each do |node|
			case node.word
			when "<predicate>"
				node.insert(Node.new("hear"), 0)
				node.insert(Node.new("do"), 0)
			when "<subject>"
				node.insert(Node.new("you"), 0)
			when "<pronoun>"
				node.insert(Node.new("me"), 0)
			end
		end
		$root
	end
end