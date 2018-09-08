require 'Faraday'
require 'json'
require 'byebug'
require_relative 'constants'

module Citibikenyc
  class ApiClient

    attr_reader :client, :response

    def initialize()
      @client = Faraday.new(url: Constants[:service_name])
      @response = response_to_json(@client.get("/gbfs/gbfs.json").body)["data"]["en"]
    end

    def getFeeds
      response_to_json(@client.get("/gbfs/gbfs.json").body)["data"]["en"]["feeds"]
    end


    private

    def response_to_json(body)
      JSON.parse(body)
    end

  end
end
