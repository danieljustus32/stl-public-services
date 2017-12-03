require 'spec_helper'

RSpec.describe StlPublicServices::CliController do 
	let(:controller) { StlPublicServices::CliController.new}

	describe "#call" do
		
		it "starts the command-line interface" do 
			expect(controller).to receive(:start)
			controller.call
		end
	
	end

	describe "#start" do
		
		before do
			allow($stdout).to receive(:puts)
			expect(controller).to receive(:gets) {"exit"}
		end
		
		it "calls welcome user" do
		  expect(controller).to receive(:welcome_user)
			controller.start
		end
	
	end

	describe "#welcome_user" do
		
		it "says something nice to the user" do
			expect($stdout).to receive(:puts).with any_args
			controller.welcome_user
		end
	
	end

	describe "#list_all_services" do

		before do 
			allow($stdout).to receive(:puts)
			expect(controller).to receive(:gets) {"list"}
		end

		it "runs when user types 'list'" do
			expect(controller).to receive(:list_all_services)
			controller.start
		end

	end

	describe "#list_services_by_letter" do

		before do 
			allow($stdout).to receive(:puts)
			expect(controller).to receive(:gets) {"a"}
		end

		it "runs when user types a single letter" do
			expect(controller).to receive(:list_services_by_letter)
			controller.start
		end

	end

	describe "#goodbye" do 
		
		it "Thanks the user and says goodbye" do 
			expect($stdout).to receive(:puts).with any_args
			controller.goodbye
		end
	
	end

end