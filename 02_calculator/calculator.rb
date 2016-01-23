def add(num1, num2)
	return num1 + num2
end

def subtract(num1, num2)
	return num1 - num2
end

def sum(array)
	sum = 0
	array.each {|v| sum += v}
	return sum
end

def multiply (*num)
	multiple = 1
	num.each {|v| multiple = multiple * v}
	return multiple
end

#the same function as "multiply" but making use of the .inject method: http://ruby-doc.org/core-2.3.0/Enumerable.html#method-i-inject 
def multiply_alt(*num)
	num.inject(:*)
end

puts multiply_alt(2,3,4,5,6)

def power(num, n)
	return num**n
end

def factorial(num)
	fact = 1
	while num > 0
		fact *= num
		num -= 1
	end
	return fact
end