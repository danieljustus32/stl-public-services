require 'pry'

class StlPublicServices::CliController

	def call
		start
	end

	def start
		welcome_user
		user_input = gets.strip
		case user_input
		when "exit"
			goodbye
		else
			puts <<-INVALID.gsub /^\s+/, ""
				Sorry, that doesn't look like a valid selection.
				Starting over...
			INVALID
			sleep(3)
			puts ""
			StlPublicServices::CliController.new.call
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
end