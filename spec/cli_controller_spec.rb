require 'spec_helper'

module StlPublicServices
	describe CliController do 
		let(:controller) { CliController.new}

		it "starts the command-line interface" do 
			controller.call
			expect(controller.start).to have_been_called
		end
	end
end