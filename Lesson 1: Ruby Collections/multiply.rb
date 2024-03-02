my_numbers = [1, 4, 3, 7, 2, 6]

def multiply(numbers, multiple)
  counter = 0
  multiplied_array = []

  loop do 
    break if multiplied_array.length == numbers.length
    current_number = numbers[counter]
    current_multiplied_number = current_number * multiple
    multiplied_array << current_multiplied_number
    counter += 1
  end



  multiplied_array
end




p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]