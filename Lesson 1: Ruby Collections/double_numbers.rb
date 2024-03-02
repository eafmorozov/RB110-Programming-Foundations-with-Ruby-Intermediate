def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do 
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2


    counter += 1
  end

  doubled_numbers
end


def double_numbers!(numbers)
  counter = 0

  loop do 
    break if counter == numbers.length
    numbers[counter] *= 2
    counter += 1
  end

  numbers
end


def double_numbers_at_odd_indicies(numbers)
  doubled_numbers = []
  index = 0

  loop do
    break if doubled_numbers.length == numbers.length
    current_number = numbers[index]
    current_number *= 2 if index.odd?
    doubled_numbers << current_number
    index += 1
  end


  doubled_numbers
end




my_numbers = [1,4,3,7,2,6,10]
p double_numbers_at_odd_indicies(my_numbers)
p my_numbers


# p double_numbers!(my_numbers)
# p my_numbers





