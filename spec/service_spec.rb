require 'spec_helper'
require 'pry'

RSpec.describe StlPublicServices::Service do
	let(:service) { StlPublicServices::Service.new({:name => "Affordable Housing Commission", :phone => "(314) 657-3880", :fax => "(314) 613-7015", :address => "1520 Market Street", :url => "https://www.stlouis-mo.gov/government/departments/affordable-housing/index.cfm"}) }

	describe "#initialize" do
		it "creates an instance of a service with all contact info" do
			expect(service.instance_variable_get(:@name)).to eq("Affordable Housing Commission")
			service.instance_variable_get(:@name)
		end 
	end

	describe ".all" do
		it "returns the value of @@all" do
			expect(StlPublicServices::Service.all).to be_kind_of(Array)
			StlPublicServices::Service.all
		end
	end

	describe "#save" do
		it "adds this instance to the @@all array" do
			service.save
			expect(service.class.all.size).not_to eq(0)
			service.class.all.size
		end
	end
end