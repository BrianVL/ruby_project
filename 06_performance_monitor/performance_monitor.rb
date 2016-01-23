def measure(n=1)
	times_array = []
	n.times do 
		#use Time.now instead of Time.new otherwise test 2 will fail
		start_time = Time.now
		yield
		elapsed_time = Time.now - start_time
		times_array << elapsed_time
	end
	times_array.inject(:+) / times_array.length
end

puts measure{}
