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


# Problem 5: Custom Exceptions



# Problem 6: Symbols as Hash Keys



# Problem 7: Enumerable select Method



# Problem 8: The unless Keyword



# Problem 9: Global Variables



# Problem 10: Iterating with times



# Problem 11: Ranges and Loops



# Problem 12: Reading Specific Lines from a File



# Problem 13: Command-line Arguments



# Problem 14: Using map with a Block



# Problem 15: Handling ZeroDivisionError



