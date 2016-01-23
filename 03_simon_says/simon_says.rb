def echo(say)
	say
end

def shout(say)
	say.upcase!
end

def repeat(say, n = 2)
		"#{say}" + " #{say}" * (n - 1)
end

def start_of_word(say, n = 1)
	arr = say.split("")
	arr[0..(n-1)].join
end

def first_word(say)
	say.split.first
end

def titleize(say)
	say.split.each_with_index{|word, index| word.capitalize! unless ((["the", "and", "over"].include?(word)) && index != 0)}.join(" ")
end

