require './lib/stl_public_services'
require 'pry'

class CliController

	def call
		start
	end

	def start
		welcome_user
		user_input = gets.strip
		Service.create_services('./fixtures/target_site.html')
		case user_input.downcase
		when "exit"
			goodbye
		when "list"
			Service.list_all_services
			puts ""
			service_number = which_service
		when /^[a-z]$/
			Service.list_all_services_by_letter(user_input)
			puts ""
			which_service
		else
			puts <<-INVALID.gsub /^\s+/, ""
				Sorry, that doesn't look like a valid selection.
				Starting over...
			INVALID
			sleep(3)
			puts ""
			self.new.call
		end
	end

	def welcome_user
		puts <<-WELCOME.gsub /^\s+/, ""
			Welcome to the St. Louis Public Services Ruby 
			CLI Gem! To list all available information on 
			St. Louis City Public Services and Government 
			Departments, type "list". You can also type 
			"exit".
		WELCOME
	end

	def goodbye
		puts <<-GOODBYE.gsub /^\s+/, ""
			Thanks for using this gem! If you'd like to 
			report a bug or contribute, check out the 
			GitHub repo listed in the README.
		GOODBYE
	end

	def which_service
		puts <<-WHICH.gsub /^\s+/, ""
			Enter the number of a service to view contact
			info for that service:
		WHICH
		puts ""
		return gets.strip
	end
end