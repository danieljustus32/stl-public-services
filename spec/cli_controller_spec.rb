require 'spec_helper'

RSpec.describe StlPublicServices::CliController do 
	let(:controller) { StlPublicServices::CliController.new}

	it "starts the command-line interface" do 
		controller.call
		expect(controller.start).to have_been_called
	end
end
