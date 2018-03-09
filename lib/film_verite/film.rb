class FilmVerite::Film

  attr_accessor :title, :date, :time, :url, :synopsis

  @@film = []

  def initialize
    @@film << self
  end

  def self.all
    @@all || scrape_film_verite
  end

  def self.find(id)
    self.all[id-1]
  end

  def self.find_by_name(name)
    self.all.detect do |m|
      m.name.downcase.strip == name.downcase.strip ||
      m.name.split("(").first.strip.downcase == name.downcase.strip
    end

    def synopsis
      @synopsis ||= synopsis_doc.search("p.synopsis").text.strip
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

#def synopsis_doc
#@plot_summary_doc ||= Nokogiri::HTML(open("#{self.url}synop"))
#end

#def doc
#@doc ||= Nokogiri::HTML(open(self.url))
#end
