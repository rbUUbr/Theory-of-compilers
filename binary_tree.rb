module BinaryTree
  class Node
    attr_reader :word, :count, :left, :right

    include Enumerable

    def initialize(word)
      @word, @count = word, 1
    end

    def size
      size = 1
      size += @left.size  unless left.nil?
      size += @right.size unless right.nil?
      size
    end

    def insert(another_one, i)
			if @word != another_one.word
				case i
				when 0
					insert_into(:right, another_one, i)
				when 1
					insert_into(:left, another_one, i)
				when 2
					insert_into(:right, another_one, i)
				when 3
					insert_into(:right, another_one, i)
				when 4...1000
					insert_into(:right, another_one, i)
				end
			else
				@count += 1
			end
    end

    def each
      @left.each {|node| yield node } unless @left.nil?
      yield self
      @right.each {|node| yield node } unless @right.nil?
    end

    def words
      entries.map {|e| e.word }
    end

    def count_all
      self.map { |node| node.count }.reduce(:+)
    end

    def insert_into(destination, another_one, i)
      var = destination.to_s
      eval(%Q{
        if @#{var}.nil?
          @#{var} = another_one
        else
          @#{var}.insert(another_one, i)
        end
      })
    end

    protected :insert_into
  end
end