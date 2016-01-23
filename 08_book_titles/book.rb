class Book
	#read title input and set as local variable
	def title=(title)
		@title = title
	end

	#capitalize each word of title except for the exclusions
	def title
		return @title.split.each_with_index{|word, index| word.capitalize! unless ((["the", "and", "over", "a", "an", "of", "in"].include?(word)) && index != 0)}.join(" ")
	end
end
