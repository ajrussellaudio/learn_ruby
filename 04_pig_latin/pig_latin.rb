def translate(string)
	array = string.split(" ")
	vowels = [ "a", "e", "i", "o", "u" ]
	i = 0
	array.each do |word|
		if vowels.include?(word[0])            # if first character is a vowel
			word << 'ay'
		else
			word.each_char do |char|
				if (not vowels.include?(char)) # if character is not a vowel
					if char == "q"
						i = i + 2
					else
						i = i + 1
					end
				else
					break
				end
			end
			x = word.slice!(0..(i-1))
			word << x << 'ay'
			i = 0
		end	
	end
	array.join(" ")
end
