### Problem 1
# Given the array, turn this array into a hash where the names are the keys and the values are the positions in the array/
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# # Solution 1
# new_hash = {}

# flintstones.each_with_index do |element, index|
#   new_hash[element] = index
# end

# flintstones = new_hash

# p flintstones

## Solution 2 

# flintstones = flintstones.each_with_object({}) do |name, hash|
#   hash[name] = flintstones.find_index(name)
# end

# p flintstones


### Problem 2
#Add up all of the ages from the Munster family hash:
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# sum_age = ages.values.inject(:+)
# p sum_age


### Problem 3
# In the ages hash, remove people with age 100 and greater
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages_higher_than_100 = ages.select do |key, value|
#   value <= 100
# end

# p ages_higher_than_100

### Problem 4
# Pick out the minimum age from our current Munster family hash: 
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# p min_age = ages.values.min

### Problem 5
## Find the index of the first name that starts with "Be"
## My solution: 
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# index_be = nil
# flintstones.each_with_index do |element, index|
#   if element.start_with?("Be")
#     index_be = index
#     break
#   end
# end

# p index_be

## Launch School's Solution
# p (flintstones.index do |name|
#   name[0,2] == "Be"
# end)

# p flintstones.index("BamBam")


### Problem 6
## Write code that changes the array below so that all of the names are shortened to just the first three characters. Do not create a new array.

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones.map! do |element|
#   element[0,3]
# end

# p flintstones

### Problem 7
## Create a hash that expressess the frequency with which each letter occures in teh string:
## ex for statement {"F" => 1, "R" => 1, "T" => 1, "c" => 1, ...}
# statement = "The Flintstones Rock"

# frequency_hash = statement.chars.each_with_object({}) do |char, hash|
#   if hash[char] != nil
#     hash[char] += 1
#   else
#     hash[char] = 1
#   end
# end

# p frequency_hash

### Problem 8
## What happens when we modify an array while we are iterating over it? What would be output by this code? 
# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end

### Problem 9
## Capitalize the first letter of each word by creating a `String#titalize` method
# words = "the flintstones rock"

# def titalize(string)
#   title_arr = string.split(" ").map do |word|
#     word.capitalize
#   end

#   title_arr.join(" ")
# end

# p titalize(words)


### Problem 10
## Given the munsters hash, midify the hash such that each member of the Munster family has an additional "age_group" key
## that has one of three values describing the age group the family member is in (kid, adult, or senior). Your solution should provide the
## has below:

# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, name_hash|
  age = name_hash["age"]
  if age < 18
    name_hash["age_group"] = "kid"
  elsif age < 65
    name_hash["age_group"] = "adult"
  else
    name_hash["age_group"] = "senior"
  end
end

p munsters