produce = { 
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

## Solution with for loop
# def select_fruit(produce)
#   fruit = {}
  
#   for key in produce.keys
#     if produce[key] == "Fruit"
#       fruit[key] = produce[key]
#     end
#   end
#   fruit
# end

## Solution with loop method

def select_fruit(produce)
  fruit = {}
  counter = 0

  produce_keys = produce.keys
  produce_values = produce.values



  loop do 
    break if produce.length == counter
    
    if produce_values[counter] == "Fruit"
      fruit[produce_keys[counter]] = produce_values[counter]
    end

    counter += 1
  end

  fruit
end



p select_fruit(produce) # => {"apple" => "Fruit", "pear" => "Fruit"}