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
		
		table = html.css('div.col-md-8:nth-child(1)')
		

				binding.pry
			end
		end
	end
end
