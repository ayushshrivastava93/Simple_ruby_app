movies = {
  starwar: 4,
  avenger: 5
}
puts "What would you like to do?"
choice =gets.chomp 
case choice
when "add"
    puts "what movie would you like to add"
    title =gets.chomp
    if movies[title.to_sym].nil?
    puts "Rating"
    rating =gets.chomp
    movies[title.to_sym] = rating.to_i
    else
    puts "Movie is already exists.. rating 
  is #{movies[title.to_sym]}."
    end
when "update"
  puts "What movie would you like to update?"
  title =gets.chomp
  if movies[title.to_sym].nil?
  puts "Movie does not exists"
  else
  puts "New rating "
  rating =gets.chomp
  movies[title.to_sym] = rating.to_i
  end
when "delete"
  puts "What movie would you like to delete "
  title =gets.chomp
  if movies[title.to_sym].nil?
  puts "movie does not exists"
  else
  movies.delete(title.to_sym)
  end
when "display"
  movies.each do |title, rating|
  puts "#{title}: #{rating}"
  end
else
  puts "Error!"
end