nta = {
   'n' => ['Times_Square', '34th', '28th', '23rd', 'Union_Square', '8th' ],
   'l' => ['8th', '6th', 'Union_Square', '3rd', '1st'],
   's' => ['Grand_Central', '33rd', '28th', '23rd', 'Union_Square', 'Astor_Place']
}

puts '****************************************************************************************************'
puts 'Please enter the line you are on.'
current_line = gets.chomp
puts 'What Station are you at?'
start = gets.chomp

puts 'What line is your destination on?'
destination_line = gets.chomp

puts 'What station would you like to go to?'
end_station = gets.chomp 

if current_line == destination_line
  destination_index = nta[current_line].index(end_station)
  stops = (nta[current_line].index(start).to_i - nta[current_line].index(end_station).to_i).abs
  puts 'You are on the right line, get off after ' + stops.to_s + ' stops'

elsif current_line != destination_line
  intersect = 'Union_Square'
  distance_to_intersect = (nta[current_line].index(start).to_i - nta[current_line].index(intersect).to_i).abs
  puts distance_to_intersect
  distance_from_intersect = (nta[destination_line].index(intersect).to_i - nta[destination_line].index(end_station).to_i).abs
  
  puts "You need to take the " + current_line.to_s + " Line for " + distance_to_intersect.to_s + " stops. Change at " + intersect + " . Then take the " + destination_line.to_s + " Line and get off after " + distance_from_intersect.to_s + " stops."
  puts "*****************************************************************************************************"
end


