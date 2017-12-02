require 'spec_helper'

RSpec.describe StlPublicServices::CliController do 
	let(:controller) { StlPublicServices::CliController.new}

	describe "#call" do
		it "starts the command-line interface" do 
			controller.call
			expect(controller.start).to have_been_called
		end
	end
end
