class Router
  def initialize
    @routes = {}
  end

  def get(path, &block)
    @routes[path] = block
  end

  def call(env)
    path = env['REQUEST_PATH']

    if @routes.key?(path)
      # Execute the handler for the requested route
      handler = @routes[path]
      response_code = 200
      response_text = handler.call
    elsif path == '/'
      # Return "Hello World" for the root path
      response_code = 200
      response_text = 'Hello World'
    else
      # Return 404 for all other routes
      response_code = 404
      response_text = 'Page Not Found'
    end
    [response_code, {'Content-Type' => 'text/plain'}, [response_text]]
  end
end