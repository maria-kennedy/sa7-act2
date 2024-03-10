############################################
# Problem 1: Method Calls Without Parentheses
puts "P1:"

def tag(html_tag, content)
  "<#{html_tag}>#{content}</#{html_tag}>"
end

# P1 Test Cases
puts tag :p, "This is a paragraph"
puts tag :h1, "This is a header"


############################################
# Problem 2: Blocks and Iteration
puts "P2:"

numbers = [1, 2, 3, 4, 5]

numbers.each do |number|
    puts number * 2
end

triple = Proc.new {|x|x*3}
puts numbers.map(&triple)

############################################
# Problem 3: Exception Handling
puts "P3:"

def safe_divide(x, y)
    begin
        x / y
    end 

    rescue ZeroDivisionError => e
        puts "Division by zero error: #{e.message}"
    end

# P3 Test Cases
puts safe_divide(10, 2)
puts safe_divide(5, 0)


############################################
# Problem 4: File I/O
puts "P4:"

begin
    content = File.read("input.txt")  
    rev = content.reverse
    File.open("output.txt", "w") do |file| 
      file.write(rev)
    end
  rescue Errno::ENOENT => e        
    puts "Error: #{e.message}"
  end


############################################
# Problem 5: Custom Exceptions
puts "P5:"

class InvalidAgeError < StandardError; end

def validate_age(age)
  if age.negative?
    raise InvalidAgeError, "Invalid age: #{age}"
  else
    puts "Age is valid"
  end
end

begin
  validate_age(-1)
rescue InvalidAgeError => e
  puts e.message
end

# P5 Test Cases
# puts validate_age(-5)
puts validate_age(30)


############################################
# Problem 6: Symbols as Hash Keys
puts "P6:"

student = {Name: "Alice", Age: 20, Grade: "A"}

student.each do |key, value|
  puts "#{key}: #{value}"
end

############################################
# Problem 7: Enumerable select Method
puts "P7:"

numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.select { |number| number.even? }
puts even_numbers


############################################
# Problem 8: The unless Keyword
puts "P8:"

def warn_unless(condition, message)
    unless condition
      puts message
    end
end

# warn_unless(true, "This is a warning.")
warn_unless(false, "This is a warning.")


############################################
# Problem 9: Global Variables
puts "P9:"

def check_status
    puts $app_status
  end
  
  # First check of global var
  $app_status = "OK"
  check_status
  
  # Changing status, and checking again
  $app_status = "Error"
  check_status

############################################
# Problem 10: Iterating with times
puts "P10:"

5.times do
    puts "Ruby is fun!"
  end

############################################
# Problem 11: Ranges and Loops
puts "P11:"

(1..5).each do |num|
    puts num
  end

############################################
# Problem 12: Reading Specific Lines from a File
# used online sources to help with parts of this one, couldn't figure out from notes alone
puts "P12:"


File.open('sample.txt') do |file|
    file.each_with_index do |line, index| 
        break if index >= 3                 # Stopping after 3 lines
        puts "#{index + 1}: #{line}"
    end
end


############################################
# Problem 13: Command-line Arguments
puts "P13:(uses command line, so no output)"

# greet.rb
ARGV.each do |name|
    puts "Hello, #{name}!"
  end


############################################
# Problem 14: Using map with a Block
puts "P14:" 

words = ["Ruby", "is", "awesome"]
str_lengths = words.map { |word| word.length }
puts str_lengths


############################################
# Problem 15: Handling ZeroDivisionError
puts "P15:"

def divide_numbers(dividend, divisor)
    begin
      result = dividend / divisor
      return result
    rescue ZeroDivisionError
      puts "Cannot divide by zero!"
    end
  end
  
  # P15 Test Cases
  puts divide_numbers(10, 2)
  puts divide_numbers(10, 0)


