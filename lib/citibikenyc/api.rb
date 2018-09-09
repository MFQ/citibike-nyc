require 'Faraday'
require 'json'
require_relative 'feeds'
require_relative 'station_information'
require_relative 'station_status'
require_relative 'region'
require_relative 'constants'

module Citibikenyc
  class ApiClient

    attr_reader :client, :response, :feeds, :station_status, :station_information, :system_regions, :system_information, :system_alerts

    def initialize()
      @client = Faraday.new(url: Constants[:service_name])
      @lang = "en"
      get_feeds
    end

    def get_feeds
      @feeds = response_to_json("/gbfs/gbfs.json")[@lang]["feeds"].map { |feed| Feed.new( feed["name"], feed["url"] ) }
    end

    def get_station_status
      feed = @feeds.find{ |f| f.name == "station_status"}
      @station_status = response_to_json(feed.url)["stations"].map { |station_status| StationStatus.new(station_status)  }
    end

    def get_station_information
      feed = @feeds.find{ |f| f.name == "station_information"}
      @station_information = response_to_json(feed.url)["stations"].map { |station_information| StationInformation.new(station_information)  }
    end

    def get_system_regions
      feed = @feeds.find{ |f| f.name == "system_regions"}
      @system_regions = response_to_json(feed.url)["regions"].map { |station_status| Region.new(station_status)  }
    end

    def get_system_information
      feed = @feeds.find{ |f| f.name == "station_information"}
      @system_information = response_to_json(feed.url)
    end

    def get_system_alerts
      feed = @feeds.find{ |f| f.name == "system_alerts"}
      @system_alerts = response_to_json(feed.url)["alertsa"]
    end

    private

    def response_to_json(url)
      @response = @client.get(url).body
      JSON.parse(@response)["data"]
    end

  end
end
