require 'sprockets'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/javascripts'
  environment.append_path 'assets/stylesheets'
  run environment
end

map '/' do
  run Proc.new{ |env| [200, { 'Content-type' => 'text/html' }, ['Hello World']]}
end
