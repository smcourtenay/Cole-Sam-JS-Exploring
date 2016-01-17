def euler_one(number)
	arr = []
	for num in 1...number
		if(divisible_by_three?(num)||divisible_by_five?(num))
			arr<<num
		else
		end
	end
	arr.inject(:+)
end

def euler_two(number)
	fibonacci_arr(number).select { |value| value.even? && value < number }.reduce { |result, value| result + value }

end

def euler_three(number)
	prime_factors(number)[-1]
end

def divisible_by_three?(number)
	number % 3 == 0
end

def divisible_by_five?(number)
	number % 5 == 0
end
def is_even?(number)
	number % 2 == 0
end
def fibonacci_arr(maxi)
	arr = [1,2]
	a = 1
	b = 2
	temp = a
	while (a < maxi && b < maxi)
		temp = a+b
		arr<<temp
		a = temp
		temp = a+b
		arr<<temp
		b = temp
	end
	return arr
end
def prime_factors(num)
	arr = []
	fac = 3
	while(num.even?)
		arr << 2
		num /= 2
	end
	while(num>=fac)
		if num % fac == 0
			arr << fac
			num /= fac
			fac += 2
		else
			fac += 2
		end
	end
	arr
end
puts euler_one(1000);
puts euler_two(4000000);
puts euler_three(600851475143);

def is_palindromic(s)
	s = s.to_s
	len = s.size
	if len.even?
		s[0...len/2] == s[len/2..-1].reverse if len.even?
	else
		s[0...len/2] == s[(len/2+1)..-1].reverse
	end
end

def euler_four()
	arr=[]
	for num_one in (100..999)
		for num_two in (100..999)
			if is_palindromic(num_one * num_two)
				arr<<(num_one*num_two)
			end
		end
	end
	arr.sort![-1]
end
puts euler_four()

def euler_five(number)
	arr=[]
	p
end