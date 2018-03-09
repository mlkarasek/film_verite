class FilmVerite::Scraper

def self.scrape_data(film_forum)
    film_forum = Nokogiri::HTML(open(https://filmforum.org))
    #synopsis and times
    film_time_synopsis = []
      m.css("div.spacer.hidden-xs").each do |d|
        film_time_synopsis << d.text
        end

    movie.time = move_time_synopsis[0]
    movie.time = move_time_synopsis [1]
  end
end



http://www.ifccenter.com
#IFC center

https://www.filmlinc.org
#Film Society of Lincoln Center
