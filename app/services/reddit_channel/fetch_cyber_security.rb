# frozen_string_literal: true

# this module is query cybersecurity reddit channel
module RedditChannel
  require 'uri'
  require 'net/http'
  # this class is for fetching data from cybersecurity reddit channel
  class FetchCyberSecurity
    def call
      @call ||= fetch_data
    end

    private

    def fetch_data
      @fetch_data ||= request
    end

    def https
      @https ||= Net::HTTP.new(url.host, url.port)
    end

    def request
      @request ||= Net::HTTP.get(url)
    end

    def url
      @url ||= URI('https://www.reddit.com/r/cybersecurity.json')
    end
  end
end
