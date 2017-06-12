movies = {Twilight: 4}
puts "To add new movie enter add"
puts "To update rating enter update"
puts "For display list of movies enter display"
puts "For delete movie from list enter delete"
choice = gets.chomp

case choice
when "add"
    puts "Enter movie title:"
    title = gets.chomp

    if movies[title.to_sym].nil?
        puts "Enter movie reting:"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "Movie #{title} with rating #{rating} was successfully added"
    else
        puts "Movie already exists with raiting: #{raiting}"
    end
when "update"
    puts "Enter a movie title: "
    title = gets.chomp

    if movies[title.to_sym].nil?
        puts "There is no such a moveie in our list"
    else
        puts "Enter new rating: "
        new_rating = gets.chomp
        movies[title] = new_rating.to_i
    end
when "display"
    movies.each() do |value, key|
        puts "#{value}: #{key}"
    end
when "delete"
    puts "Enter the title to be deleted"
    title = gets.chomp

    if movies[title].nil?
        puts "No such movie"
    else
        movies.delete(title)
        puts "Movie delited"
    end
else
    puts "Not sure what sould I do!"
end
