require 'spec_helper'
require 'pry'

RSpec.describe StlPublicServices::Service do
	
	let(:service) { StlPublicServices::Service.new({:name => "Affordable Housing Commission", :phone => "(314) 657-3880", :fax => "(314) 613-7015", :address => "1520 Market Street", :url => "https://www.stlouis-mo.gov/government/departments/affordable-housing/index.cfm"}) }

	describe "#initialize" do
		
		it "creates an instance of a service with all contact info" do
			
			expect(service.instance_variable_get(:@name)).to eq("Affordable Housing Commission")
			expect(service.instance_variable_get(:@url)).to eq("https://www.stlouis-mo.gov/government/departments/affordable-housing/index.cfm")
			expect(service.instance_variable_get(:@phone)).to eq("(314) 657-3880")
			expect(service.instance_variable_get(:@fax)).to eq("(314) 613-7015")
			expect(service.instance_variable_get(:@address)).to eq("1520 Market Street")
			service.instance_variable_get(:@name)
			service.instance_variable_get(:@url)
			service.instance_variable_get(:@phone)
			service.instance_variable_get(:@fax)
			service.instance_variable_get(:@address)
		
		end 
	
	end

	describe ".all" do
		
		it "returns the value of @@all" do
			
			expect(service.class.all).to be_kind_of(Array)
			service.class.all
		
		end
	
	end

	describe "#save" do
		
		it "adds this instance to the @@all array" do
			
			service.save
			expect(service.class.all.size).not_to eq(0)
			service.class.all.size
		
		end
	
	end

	describe ".find_or_create_by_name" do
		
		context "if the service already exists"

			it "returns an instance of the service" do

				expect(service.class.find_or_create_by_name(service.name)).to equal(service)
			
			end

		context "if the service doesn't exist"

			it "creates a new service" do

				expect(service.class.find_or_create_by_name("Brightside St. Louis")).not_to equal(service || nil)
				expect(service.class.find_or_create_by_name("Brightside St. Louis")).to be_an_instance_of(StlPublicServices::Service)

			end
	
	end

end