require 'Faraday'
require 'json'
require_relative 'feeds'
require_relative 'constants'

module Citibikenyc
  class ApiClient

    attr_reader :client, :response, :feeds, :lang

    def initialize()
      @client = Faraday.new(url: Constants[:service_name])
      @lang = "en"
      @response = response_to_json(@client.get("/gbfs/gbfs.json").body)["data"][@lang]
    end

    def get_feeds
      @feeds = response_to_json(@client.get("/gbfs/gbfs.json").body)["data"][@lang]["feeds"].map { |feed| Feed.new(feed["name"], feed["url"])  }
    end

    private

    def response_to_json(body)
      JSON.parse(body)
    end

  end
end
