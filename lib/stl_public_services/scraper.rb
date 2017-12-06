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

		html.css('h4 a').each do |title|
			name = title.text.to_sym
			services[name] = {
				:name => name.to_s,
				:url => title.attribute('href').text
			}
			binding.pry
		end
	end
end
