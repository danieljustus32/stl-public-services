require 'spec_helper'

RSpec.describe StlPublicServices::CliController do 
	let(:controller) { StlPublicServices::CliController.new}

	describe "#call" do
		it "starts the command-line interface" do 
			expect(controller.start).to have_been_called
			controller.call
		end
	end

	describe "#start" do 
		it "calls welcome user and asks for input" do
			expect(controller.welcome_user).to have_been_called
			controller.stub!(:gets) {"1"}
			expect(controller).to have_received(:puts).with("1")
			controller.start
		end
	end

	describe "#welcome_user" do
		it "says something nice to the user" do
			expect(:puts).to have_been_called
			controller.welcome_user
		end
	end
end
