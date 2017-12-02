class StlPublicServices::CliController

	def call
		start
	end

	def start
		welcome_user
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
end