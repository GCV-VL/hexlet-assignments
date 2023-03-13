# frozen_string_literal: true

class AdminPolicy
  def initialize(app)
    @app = app
  end

  def call(env)
    p 'AdminPolicy is used'
    path = env['REQUESTED_PATH']
    if path.start_with?('/admin')
      response_code = 403
      response_text = 'Admin page is not implemented yet'
      return [response_code, {'Content-Type' => 'text/plain'}, [response_text]]
    end

    @app.call(env)
  end
end
