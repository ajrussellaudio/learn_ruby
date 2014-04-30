class Timer
	def initialize
		secs = 0
		@seconds = secs
		@minutes = (secs / 60) % 60
		@hours = secs / 60 / 60
	end

	def seconds
		@seconds
	end

	def seconds=(secs)
		@seconds = secs
	end

	def time_string
		secs = @seconds % 60
		mins = (@seconds / 60) % 60
		hour = @seconds / 60 /60

		time_array = [ hour, mins, secs ]
		time_array.map! { |x|
			x.padded
		}
		@time_string = time_array.join(":")
	end

	# def padded(num)
	# 	if num < 10
	# 		("0" + num.to_s)
	# 	else
	# 		(num.to_s)
	# 	end
	# end
end

class Integer
	def padded
		if self < 10
			("0" + self.to_s)
		else
			(self.to_s)
		end
	end
end