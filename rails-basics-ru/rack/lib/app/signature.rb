# frozen_string_literal: true

require 'digest'

class Signature
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    response_body = response.first
    signature = generate_signature(response_body)
    response_body += "\n #{signature}"

    [status, headers, [response_body]]
  end

  private

  def generate_signature(data)
    Digest::SHA2.hexdigest(data)
  end
end
