class Book

	def title()
		@title
	end

	def title=(string)
		@title = make_caps(string)
	end 

	def make_caps(string)
		ignore = ["the", "a", "an", "and", "in", "of"]
		string = string.capitalize
		array = string.split(" ")
		i = 0
		while i < array.length
			if (not ignore.include?(array[i]))
				array[i] = array[i].capitalize
			end
			i = i + 1
		end
		array.join(" ")
	end
end