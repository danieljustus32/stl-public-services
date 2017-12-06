class StlPublicServices::Service

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

	def self.find_or_create_by_name(name)

	end
end