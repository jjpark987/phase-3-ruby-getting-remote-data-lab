# Write your code here
require 'open-uri'
require 'net/http'
require 'json'

class GetRequester

    attr_reader :url

    def initialize(url_string)
        @url = url_string
    end

    # Sends a GET request to the URL and returns the body of the response
    def get_response_body
        Net::HTTP.get_response(URI.parse(@url)).body
    end

    # Returns a Ruby Array or Hash made up of data converted from the response
    def parse_json
        JSON.parse(self.get_response_body)
    end

end