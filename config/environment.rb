# Load the Rails application.
require_relative 'application'

# Load the .env file that contains API Keys
Dotenv.load("./.env")

# Initialize the Rails application.
Rails.application.initialize!
