def add(a,b)
	a+b
end
def subtract a,b
	a-b
end
def sum arr
	arr.inject(0) {|sum, n| sum + n}
end
def multiply *nums
	nums.inject(1) {|product, n| product * n}
end
def power a,b
	a**b
end
def factorial num
	unless num == 0
		multiply(*(1..num))
	else
		0
	end
end