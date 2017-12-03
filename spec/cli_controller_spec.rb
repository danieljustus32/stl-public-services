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
		
		context "when user types 'exit',"
		
		before do
			allow($stdout).to receive(:puts)
			expect(controller).to receive(:gets) {"exit"}
		end
		
		it "calls welcome user" do
		  expect(controller).to receive(:welcome_user)
			controller.start
		end

		context "when user types 'list'"

		before do 
			allow($stdout).to receive(:puts)
			expect(controller).to receive(:gets) {"list"}
		end

		it "calls #list_all_services" do
			expect(controller).to receive(:list_all_services)
			controller.start
		end

		context "when user types a single letter"

		before do 
			allow($stdout).to receive(:puts)
			expect(controller).to receive(:gets) {"a"}
		end

		it "calls #list_services_by_letter" do
			expect(controller).to receive(:list_services_by_letter)
			controller.start
		end
	
	end

	describe "#welcome_user" do
		
		it "says something nice to the user" do
			expect($stdout).to receive(:puts).with any_args
			controller.welcome_user
		end
	
	end

	describe "#goodbye" do 
		
		it "Thanks the user and says goodbye" do 
			expect($stdout).to receive(:puts).with any_args
			controller.goodbye
		end
	
	end

end