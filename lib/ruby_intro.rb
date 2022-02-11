# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr.first if arr.length == 1
  arr.sort!
  return arr[-1] + arr[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty?
  (arr.empty? && n.zero?) || arr.permutation(2).any? { |x, y| x + y == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, '+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == "0"
	return /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
		raise ArgumentError, 
			"Illegal argument" if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf("$%2.2f", @price)
	end
end
