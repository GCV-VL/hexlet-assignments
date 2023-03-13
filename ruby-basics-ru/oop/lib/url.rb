# frozen_string_literal: true

# BEGIN
class URL
    attr_reader :scheme, :host, :query_params

    def initialize(url)
        uri = URI(url)
        @scheme = uri.scheme
        @host = uri.host
        @query_params = CGI.parse(uri.query)
    end

    def scheme
        @scheme
    end

    def host
        @host
    end

    def query_params
        @query_params
    end
end

# END

# url = URL.new("https://www.example.com?param1=value1&param2=value2")
# puts url.scheme # prints "https"
# puts url.host # prints "www.example.com"
# puts url.query_params # prints {"param1"=>["value1"], "param2"=>["value2"]}

