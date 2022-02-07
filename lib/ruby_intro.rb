# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum();
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).sum();
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  result = false
  twoEls = arr.combination(2)
  twoEls.each do |subArr|
    if(n == subArr.sum())
      result = true
      break
    end
  end
  
  return result
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[^aeiou\W]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # Case is true when there are only 1's and 0's and the string ends in at least 1 zero
  # Any number of zeroes and ones, but at least one 1 and ending with a zero
  
  binary = s.match(/^[0-1]*[0]$/) != nil
  if(!binary)
    # Regect non-binay numbers or binary ending with 1 immediatly
    return false
  end
  
  # Make sure the string isn't 2, that's the only binary ending with 0 we won't accept
  not_2 = s.match(/[1][0]\z/) == nil
  return not_2
end

# Part 3

class BookInStock
# YOUR CODE HERE
  @isbn = ""
  @price = 0
  
  def isbn #Getter definition
    #puts "Getting the isbn."
    return @isbn
  end
  def isbn=(new_isbn) #Setter definition
    @isbn = new_isbn
  end
  
  def price #Getter definition
    #puts "Getting the price"
    return @price
  end
  def price=(new_price) #Setter definition
    @price = new_price
  end
  
  def initialize(isbn_in, price_in)
    if((isbn_in == "") || (price_in <= 0))
      raise ArgumentError
    end
    @isbn = isbn_in
    @price = price_in
  end
  
  def price_as_string
    result = sprintf('$%.2f', @price)
    return result
  end
end
