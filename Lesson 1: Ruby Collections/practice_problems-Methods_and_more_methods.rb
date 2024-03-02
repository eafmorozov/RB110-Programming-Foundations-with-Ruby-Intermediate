## Problem 1
# what is the return value of the `select` method below? Why? 

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

## Problem 2
# How does `count` treat the block's return value? How can we find out? 

p (['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end)

## Problem 3
# What is the return value of  `reject` in the following code? Why? 
p ([1, 2, 3].reject do |num|
  puts num
end)

## Problem 4
# What is the return value of `each_with_object` in the following code? Why?
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

## Problem 5
# What does `shift` do in the following code? How can we find out?
hash = { a: 'ant', b: 'bear' }
hash.shift

## Problem 6
#What is the return value of the following statement? Why?
['ant', 'bear', 'caterpillar'].pop.size

## Problem 7
#What is the block's return value in the following code? How is it determined? 
#Also, what is the return value of any? in this code and what does it output?
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

## Problem 8
# How does `take` work? Is it destructive? How can we find out?
arr = [1, 2, 3, 4, 5]
arr.take(2)

# Problem 9
#What is the return value of `map` in the following code? Why?
{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# Problem 10
#What is the return value of the following code? Why? 
[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end