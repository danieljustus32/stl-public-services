require 'nokogiri'
require 'pry'

class StlPublicServices::Scraper

	attr_accessor :url

	def initialize(url)
		@url = url
	end

	def scrape_service_info(url)
		html = open(url)
		doc = Nokogiri::HTML(html)
		binding.pry
	end
end
