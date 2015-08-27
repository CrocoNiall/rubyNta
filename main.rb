nta = {
   'n' => ['Times_Square', 'N_34th', 'N_28th', 'N_23rd', 'Union_Square', 'N_8th' ],
   'l' => ['L_8th', 'L_6th', 'Union_Square', 'L_8th'],
   's' => ['Grand_Central', 'S_23rd', 'S_28th', 'Union_Square', 'Astor_Palace']
}


puts 'Please enter the line you are on.'
current_line = gets.chomp

puts 'Hello, please eneter your current station.'
start = gets.chomp

current_index = nta[current_line].index(start)
puts 'Your current location is' + current_line +' line. Your current station is: ' + nta[current_line][current_index]

puts 'What line is your destination on?'
destination_line = gets.chomp

puts 'What station would you like to go to?'
end_station = gets.chomp 

if current_line == destination_line
  destination_index = nta[current_line].index(end_station)
  stops = nta[current_line].index(start) - nta[current_line].index(end_station)
  stop = stop.abs
end

if current_line != destination_line

intersect = 

distance_to_intersect = 
