# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

## Autoload classes
config.autoload_paths << "#{Rails.root}/app/lib"
