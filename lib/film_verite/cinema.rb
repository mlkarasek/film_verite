require 'pry'
class FilmVerite::Cinema

    attr_accessor :name, :location

    @@cinema = []

    def initialize
      @@cinema << self
    end

    def self.cinema
      @@cinema
    end

    def self.scrape_cinema_1
      doc = Nokogiri::HTML(open(https://filmforum.org))
      name = self.new
      location =
    end

    def self.scrape_cinema_2
      doc = Nokogiri::HTML(open(http://www.ifccenter.com)
      name = self.new
      location = 

    end

    def self.scrape_cinema_3
      doc = Nokogiri::HTML(open(https://www.filmlinc.org))
      name = self.new
      location =
    end

  end
