class Integer

	def padding
		if self < 10
			("0" + self.to_s)
		else
			(self.to_s)
		end
	end

end

puts "Enter seconds:"
input = gets.chomp.to_i

secs = input % 60
mins = (input / 60) % 60
hour = input / 60 /60

time_array = [ hour, mins, secs ]
time_array.map! { |x|
	x.padding
}

puts hour.to_s + " hours, " + mins.to_s + " minutes and " + secs.to_s + " seconds."
puts time_array.join(":")


