# frozen_string_literal: true

require 'rack'
#require_relative 'admin_policy'
#require_relative 'execution_timer'
#require_relative 'signature'
#require_relative 'router'

class Router
  def initialize
    @routes = {}
  end

  def get(path, &block)
    @routes[path] = block
  end

  def call(env)
    path = env['REQUEST_PATH']

    if path.start_with?('/admi')
      handler = @routes[path]
      response_code = 403
      response_text = ''
    elsif @routes.key?(path)
      # Execute the handler for the requested route
      handler = @routes[path]
      response_code = 200
      response_text = handler.call
    else
      # Return 404 for all other routes
      response_code = 404
      response_text = 'Page Not Found'
    end
    [response_code, {'Content-Type' => 'text/plain'}, [response_text]]
  end
end

# Create a new instance of the Router class
router = Router.new

# Define the handlers for the two routes
router.get '/' do
  'Hello World'
end

router.get '/about' do
  'About Us'
end



# Start the application using Rack
app = lambda { |env| router.call(env) }
Rack::Handler::WEBrick.run app, Port: 3000