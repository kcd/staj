# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Staj::Application.initialize!

AWS::S3::Base.establish_connection!(
   :access_key_id     => ENV['S3_KEY'],
   :secret_access_key => ENV['S3_SECRET']
)
