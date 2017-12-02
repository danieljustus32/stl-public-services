class StlPublicServices::Service

	@@all = []

	def initialize(attributes)
		attributes.each { |k, v| self.send("#{k}=", v)}
	end
end