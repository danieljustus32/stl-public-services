require './lib/stl_public_services'
require 'nokogiri'
require 'pry'

class Scraper

	attr_accessor :url

	def initialize(url)
		@url = url
	end

	def scrape_service_info(url)
		html = Nokogiri::HTML(open(url))

		services =[]

		html.css('h4 a').each do |title|
			name = title.text
			url = title.attribute('href').text
			phone, fax = title.ancestors[1].children[3].text.scan(/\(\d{3}\).+/)
			address = title.ancestors[1].children[3].text.scan(/\d{2,6}\s[A-z].+/).join
			attrs = {
				:name => name,
				:url => url,
				:phone => phone,
				:fax => fax,
				:address => address
			}
			services <<	attrs
		end
		services
	end
end
