class Router
  def initialize
    @routes = {}
  end

  def get(path, &block)
    @routes[path] = block
  end

  def call(env)
    path = env['REQUEST_PATH']

    if path == '/about'
      response_code = 200
      response_text = 'About us'
    elsif path == '/'
      response_code = 200
      response_text = 'Hello World'
    else
      response_code = 404
      response_text = 'Page Not Found'
    end
    [response_code, {'Content-Type' => 'text/plain'}, [response_text]]
  end
end
