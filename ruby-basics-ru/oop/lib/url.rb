# frozen_string_literal: true

require 'uri'
require 'forwardable'

class Url
  include Comparable
  extend Forwardable

  def_delegators :@uri, :scheme, :host, :port

  def initialize(url)
    @uri = URI(url)
    query = @uri.query || ''

    @options = query.split('&').each_with_object({}) do |params, acc|
      key, value = params.split('=')
      acc[key.to_sym] = value
    end
  end

  def query_params
    @options
  end

  def query_param(key, default = nil)
    @options.fetch(key, default)
  end

  def <=>(other)
    [scheme, host, port, query_params] <=> [other.scheme, other.host, other.port, other.query_params]
  end
end
