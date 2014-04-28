def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(array)
	total = 0
	array.each do |val|
		total = total + val
	end
	total
end

def multiply(*numbers)
	total = 1
	numbers.each do |val|
		total = total * val
	end
	total
end

def power(num, exp)
	total = 1
	i = 0
	while i < exp
		total = total * num
		i = i + 1
	end
	total
end

def factorial(num)
	total = 1
	if num == 0
		total = 0
	else
		while num > 0
			total = total * num
			num = num - 1
		end
	end
	total
end





