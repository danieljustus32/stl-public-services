require 'nokogiri'
require 'pry'

class StlPublicServices::Scraper

	attr_accessor :url

	def initialize(url)
		@url = url
	end

	def scrape_service_info(url)
		html = Nokogiri::HTML(open(url))

		services = {}

		html.css('div.col-md-8 div').each do |listing|
			service_names = listing.css('h4 a').text
			urls = listing.css('a').attribute('href').value
			phone = listing.css('div:nth-child(1)').text.scan(/P\S+\s\S+\s\S+/).join.gsub "Phone: ", ""
			fax = listing.css('div:nth-child(1)').text.scan(/F\S+\s\S+\s\S+/).join.gsub "Fax: ", ""
			binding.pry
		end
	end
end
