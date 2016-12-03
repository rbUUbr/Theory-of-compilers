require './binary_tree.rb'
module BinaryOperations
	def input_to_tree_not_terminated
		i = 0
		VPS.each do |word|
			$root.insert(Node.new(word), i)
			i += 1
		end 
		$root
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
				node.insert(Node.new("me"), 1)
			end
		end
		$root
	end
	def make_first_subtask
		puts "<sentence> => #{$root.right.word}#{$root.left.word}"
		puts "<sentence> => #{$root.right.right.word}#{$root.left.word}"
		puts "<sentence> => #{$root.right.right.right.right.right.word} #{$root.right.right.right.right.word} #{$root.left.word}"
		puts "<sentence> => #{$root.right.right.right.right.right.word} #{$root.left.word} #{$root.right.right.right.right.word} #{$root.right.right.right.word}"
		puts "<sentence> => #{$root.right.right.right.right.right.word} #{$root.left.right.word} #{$root.right.right.right.right.word} me"
	end
end