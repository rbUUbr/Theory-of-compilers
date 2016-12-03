GRAMMAR_HASH = {:not_terminated => ["<sentence>", "<subject>", "<direct addition>" ,"<predicate>", "<auxiliary>", "<article>", "<noun>", "<verb>"]}
#def output_not_terminated
#	puts "<Special_word> ::= Where!When!Why!Who!What"
	#puts "<Auxiliary> ::= Did!Does!Do!Am!Are!Is!"
	#puts "<Subject> ::= [A-Za-z]+"
	#puts "<Predicate> ::= [A-Za-z]+(?:/ing/|/ed/|/s/)"
#	puts "<Other words> ::= [A-Za-z]+"
#end
#output_not_terminated
def input_phrase
	puts "Please, input your sentence:"
	return gets.chomp.split(" ")
end
GRAMMAR_HASH[:terminated] = input_phrase
puts GRAMMAR_HASH