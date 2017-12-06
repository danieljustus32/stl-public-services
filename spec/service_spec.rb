require 'spec_helper'
require 'pry'

RSpec.describe Service do
	
	let(:service) { Service.new({:name => "Affordable Housing Commission", :phone => "(314) 657-3880", :fax => "(314) 613-7015", :address => "1520 Market Street", :url => "https://www.stlouis-mo.gov/government/departments/affordable-housing/index.cfm"}) }
	let(:url) { './fixtures/target_site.html'}


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

	describe ".create_services" do

		it "takes input from Scraper class and creates services with it" do

			service.class.create_services(url)
			expect(service.class.all.size).to eq(95)

		end

	end

	describe ".list_all_services" do 

		it "lists the name of each service" do
			
			expect($stdout).to receive(:puts).exactly(95).times.with any_args
			service.class.list_all_services

		end

	end

	describe ".list_all_services_by_letter" do

		it "lists all the services starting with input letter" do

			expect($stdout).to receive(:puts).exactly(5).times.with any_args
			service.class.list_all_services_by_letter("h")

		end

	end

end