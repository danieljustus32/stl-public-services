class StlPublicServices::Service

	@@all = []
	attr_accessor :name, :phone, :fax, :address, :url

	def initialize(attributes)
		attributes.each { |k, v| self.send("#{k}=", v)}
	end
end