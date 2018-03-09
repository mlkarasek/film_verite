class FilmVerite::CLI

def call
    greeting
    list_cinemas
    menu
    list_films
    closing
  end

def greeting
  puts "Welcome! Choose a cinema for current films. Choose a film for more information and cinema. "
  puts "To infinity and beyond!"

def list_cinemas
  FilmVerite::Scraper.scrape_data
  FilmVerite::Cinema.all.each.with_index(1) do |cinema, i|
        puts "#{i}. #{cinema.name}"
    end
  end
    puts ""
  end

  def print_cinema(cinema)
    puts ""
    puts "#{cinema.name}"
    puts ""
    puts cinema.location
  end

def menu
    input = nil
    while input != "exit"
      puts "Select your cinema of choice by inserting the numeral."
      puts "Select film for more information. Type exit to end."
      input = gets.strip.downcase
      if input.to_i > 0 && input.to_i < 6
        if cinema = FilmVerite::Cinema.find(input.to_i)
          print_cinema(cinema)
        end
      elsif input == "menu"
        list_films
  end

def list_films
  puts "Films, films, films!"
  FilmVerite::Scraper.new.scraper_film
  FilmVerite::Film.all.each.with_index(1) do |film, i|
    if i <== 10
  puts "#{i}. #{film.name}"
  end
end

def closing
    puts "Have fun! Here’s looking at you, kid"
  end
end
