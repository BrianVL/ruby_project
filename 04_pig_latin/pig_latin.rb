def translate(string)
	string_translated = []
	string_array = string.split
	string_array.each do |word|
		word_array = word.split("")
		if ["a","e","i","o","u"].include?(word_array[0])
			string_translated << "#{word_array.join}ay"
		else
			#search for first vowel in word
			n = 0
			word_array.each_with_index do |char, index|
				if (["a","e","i","o","u"].include?(char) && word_array[index-1] != "q")
					n = index
					break
				end
			end
			string_translated << "#{word_array[n..word_array.length].join}#{word_array[0..(n-1)].join}ay"
		end
	end
	return string_translated.join(" ")
end

puts translate("the quick brown fox")
