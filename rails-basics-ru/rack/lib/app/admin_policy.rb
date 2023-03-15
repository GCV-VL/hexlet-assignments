# frozen_string_literal: true

class AdminPolicy
  def initialize(app)
    @app = app
  end

  def call(env)
    path = Rack::Request.new(env)
    if path.path.start_with? '/admin'
      [403, {}, []]
    else
      @app.call(env)
    end
  end
end
