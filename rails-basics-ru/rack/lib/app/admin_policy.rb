# frozen_string_literal: true

class AdminPolicy
  def initialize(app)
    @app = app
  end

  def call(env)
    if env['REQUEST_PATH'].start_with?('/admin')
      [403, {'Content-Type' => 'text/plain'}, []]
    else
      @app.call(env)
    end
  end
end