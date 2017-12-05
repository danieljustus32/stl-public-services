require 'nokogiri'
require 'pry'

class StlPublicServices::Scraper

	attr_accessor :url

	def initialize(url)
		@url = url
	end

	def scrape_service_info(url)
		doc = Nokogiri::HTML(open(url))
		a = doc.css('h4 a').map do |listing|
			name = listing.text
			url = listing['href']
		end
		binding.pry
	end
end
