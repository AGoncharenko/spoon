require 'net/http'
require 'json'

class SpoonFlower
  class << self
    def parse_results
      Rails.cache.fetch('designs', expires_in: 5.minutes) do
        get_data['results'].first['results']
      end
    end

    private
    def get_data
      parse_response(api_url)
    end

    def api_url
      'https://api.spoonflower.com/design/search'
    end

    def parse_response(request)
      JSON.parse(send_request(request))
    end

    def send_request(request)
      Net::HTTP.get(URI(request))
    end
  end
end