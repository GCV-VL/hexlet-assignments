class ExecutionTimer
    def initialize(app)
      @app = app
    end

    def call(env)
      puts "ExecutionTimer middleware called"
      start_time = Time.now
      status, headers, body = @app.call(env)
      end_time = Time.now
      response_time = end_time - start_time
      headers['X-Response-Time'] = "#{response_time}s"
      [status, headers, body]
    end
  end