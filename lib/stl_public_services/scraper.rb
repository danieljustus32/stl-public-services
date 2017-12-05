require 'nokogiri'
require 'pry'

class StlPublicServices::Scraper

	attr_accessor :url

	def initialize(url)
		@url = url
	end

	def scrape_service_info(url)
		doc = Nokogiri::HTML(open(url))
		name = nil	
		phone = nil	
		fax = nil
		address = nil	
		url = nil
		doc.css('h4 a').map do |listing|
			name = listing.text
			url = listing ['href']	
		end
		a = doc.css
		binding.pry
	end
end
