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
		service_info = Scraper.new(url).scrape_service_info(url)
		service_info.each do |attrs|
			self.new(attrs).save
		end
	end

	def self.list_all_services_by_letter
		self.all.each do |service|
			i = 0
			puts "#{i}) #{service.name}"
			i += 1
		end
	end
end