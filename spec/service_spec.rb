require 'spec_helper'
require 'pry'

RSpec.describe StlPublicServices::Service do
	let(:service) { StlPublicServices::Service.new("Affordable Housing Commission", "(314) 657-3880", "(314) 613-7015", "1520 Market Street", "https://www.stlouis-mo.gov/government/departments/affordable-housing/index.cfm") }

	describe "#initialize" do
		it "creates an instance of a service with all contact info" do
			expect(service.instance_variable_get(:@name)).to eq("Affordable Housing Commission")
			service.instance_variable_get(:@name)
		end 
	end
end