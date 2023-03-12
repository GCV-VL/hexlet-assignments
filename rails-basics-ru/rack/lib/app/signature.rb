# frozen_string_literal: true

require 'digest'

class Signature
  def initialize(app)
    @app = app
  end

  def call(env)
    puts "Signature middleware called"
    response_body = response.join('')
    signature = generate_signature(response_body)
    response_body += "\nSignature: #{signature}"

    [status, headers, [response_body]]
  end

  private

  def generate_signature(data)
    # Use SHA-256 to generate a signature
    Digest::SHA256.hexdigest(data)
  end

end
