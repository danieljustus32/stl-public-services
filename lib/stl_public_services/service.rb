require './lib/stl_public_services'

class Service

	@@all = []
	attr_accessor :name, :phone, :fax, :address, :url

	def initialize(attributes)
		attributes.each { |k, v| self.send("#{k}=", v)}
	end

	def self.all
		@@all
	end

	def save
		@@all << self
	end

	def self.create_services(url)
		service_info = Scraper(url).new.scrape_service_info(url)
		service_info.each do |attrs|
			self.new(attrs).save
		end
	end
end