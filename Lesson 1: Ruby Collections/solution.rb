
# **Algorithms**
# 1. Create an empty `rows` array to contain all of the rows
# 2. Create a `row` array and add it to the overall `rows` array
# 3. Repeat step 2 until all the necessary rows have been created 
# 	1. all the rows have been created when the length of the `rows` array is equal to the input integer
# 4. Sum the final row
# 5. Return the sum of the final row

## My solution: 
# def sum_even_number_row(row_number)
#   rows = []
#   row_length = 1
#   row_start_number = 2
#   loop do 
#     current_row = create_row(row_start_number, row_length)
#     rows << current_row
#     row_start_number = current_row[-1] + 2
#     row_length += 1 
#     break if rows.length == row_number
#   end
#   rows # TO DO : sum the final row and return the sum
# end

##Launch School's Solution
def sum_even_number_row(row_number)
  rows = []
  start_integer = 2
  (1..row_number).each do |current_row_number|
    rows << create_row(start_integer, current_row_number)
    start_integer = rows.last.last + 2
  end

  sum = 0 
  rows.last.sum
end


# Algorithms: 
# 1. Create an empty `row` to contain the integers
# 2. add the starting integer
# 3. increment the starting integer by 2 to get the next integer in the sequence
# 4. repeat steps 2 and 3 until the size of the array is equal to the length provided. 
# 5. return the array

# Start the loop
# - Add the start integer to the row
# - Increment the start integer by 2
# - Break out of the loop if length of row equals row length

def create_row(start_integer, row_length)
  row = []
  current_integer = start_integer
  loop do 
    row << current_integer
    current_integer += 2
    break if row.length == row_length
  end
  row
end


## Test Cases

p sum_even_number_row(1) == 2 # should be true if this is working correctly
p sum_even_number_row(2) == 10
p sum_even_number_row(4) == 68


# p create_row(2, 1) == [2]
# p create_row(4, 2) == [4, 6]
# p create_row(8, 3) == [8, 10, 12] 


