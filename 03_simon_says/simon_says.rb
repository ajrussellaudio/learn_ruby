def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, reps = 2)
	string = (string + " ") * reps
	string.chomp(" ")
end

def start_of_word(string, letters)
	string[0..(letters-1)]
end

def first_word(string)
	array = string.split(" ")
	array.first
end

def titleize(string)
	string = string.capitalize
	array = string.split(" ")
	i = 0
	while i < array.length
		if array[i].length >= 4
			array[i] = array[i].capitalize
		end
		i = i + 1
	end
	array.join(" ")
end


