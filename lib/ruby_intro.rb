# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # For an empty array it should return zero
  if arr == []
    return 0 
  # Define a method sum(array) that takes an array of integers as an argument and returns the sum of its elements
  else
    s = 0
    for element in arr
      s += element
    end
    return s
  end
  
end

def max_2_sum arr
  # For an empty array it should return zero
  if arr == []
    return 0
  end
  # For an array with just one element, it should return that element
  if arr.length == 1
    return arr[0]
  end
  # Define a method that takes an array of integers as an argument and returns the sum of its two largest elements
  s = Array.new
  index = 0
  for i in 0...arr.length-1
    for j in i+1...arr.length
      s[index] = arr[i] + arr[j]
      index += 1
    end
  end
  num = s[0]
  for element in s
    if element > num
      num = element
    end
  end
  return num
  
end

def sum_to_n? arr, n
  # For an empty array it should return false
  if arr == []
    return false
  end
  # For an array with just one element, it should return false
  if arr.length == 1
    return false
  end
  # returns true if any two elements in the array of integers sum to n
  for i in 0...arr.length-1
    for j in i+1...arr.length
      s = arr[i] + arr[j]
      if s == n
        return true
      end
    end
  end
  
  return false
  
end

# Part 2

def hello(name)
  # takes a string representing a name and returns the string "Hello, " concatenated with the name
  return "Hello" + ", " + name.to_s
end

def starts_with_consonant? s
  # returns false if it doesn't starts with a consonant
  first = s[0]
  if ['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u'].include? first
    return false
  end
  # check if it starts with an english letter
  if first =~ /[[:alpha:]]/
    return true
  else
    return false
  end
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == ""
    return false
  end
  
  for i in 0...s.length
    if s[i] != "0" and s[i] != "1"
      return false
    end
  end
  
  if s.to_i(2) % 4 ==  0
    return true
  end
  return false
  
end

# Part 3

class BookInStock
  
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    # raise ArgumentError (one of Ruby's built-in exception types) if the ISBN number is the empty string or if the price is less than or equal to zero
    if isbn == "" or price <= 0
      raise(ArgumentError)
    end
  end
  
  def price_as_string
    # return "$%0.2f" % [@price]
    return "$" + "#{'%0.2f' % @price}"
  end
   
end