def reverser
	yield.split.each{|word| word.reverse!}.join(" ")
end

def adder(add = 1)
	number = yield
	number += add 
	return number
end

def repeater(n = 1)
	n.times{yield}
end