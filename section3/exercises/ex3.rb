# exercise 39 in Learn Ruby the Hard Way
# create a mapping of state to abbreviation
states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

# create a basic set of states and some cities in them
cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

# add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# puts out some cities
puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

# puts some states
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

# do it by using the state then cities dict
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has : #{cities[states['Florida']]}"

# puts every state abbreviation
puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

# puts every city in state
puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

# now do both at the same time
puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
# by default ruby says "nil" when something isn't in there
state = states['Texas']

# this line of code below is looking at line 58 which will return the value "nil" because there is no 'Texas' key in the hash.
# !state is a boolean function asking "Is the value of state nil or false?"
# since the value of the state variable is "nil" !state will be true and the code beneath it will print
if !state
  puts "Sorry, no Texas."
end

# default values using ||= with the nil result
city = cities['TX']
# ||= is a conditional assignment operator. in this case, it is saying that if the
# city variable is false or nil, then it will assign the message 'Does Not Exist'
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is: #{city}"

puts '-' * 10

states['Washington'] = 'WA'
cities['WA'] = 'Seattle'

puts "I would like to visit #{cities[states['Washington']]}, #{states['Washington']} again!"
