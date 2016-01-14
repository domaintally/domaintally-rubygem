module Metricsbot

  class << self
    attr_accessor :api_access_token
  end

  include HTTParty

  base_uri 'https://www.domaintally.com/api/v1'

  def self.domain(domain)
    params = {
      :access_token => api_access_token,
      :domain => domain
    }

    body = get('/domain/', :query => params).parsed_response

    if body['meta']['code'] == 200
      body
    else
      raise ArgumentError, body['meta']['errorDetail']
    end
  end

end
