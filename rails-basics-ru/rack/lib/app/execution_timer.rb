# frozen_string_literal: true

class ExecutionTimer
  def initialize(app)
    @app = app
  end

  def call(env)
    start_time = Time.now
    status, headers, response = @app.call(env)
    end_time = Time.now
    duration = (end_time - start_time) * 1_000

    response_body = response.join
    response_body += "\n\nElapsed time: #{duration.round(2)}s"

    [status, headers, [response_body]]
  end
end
