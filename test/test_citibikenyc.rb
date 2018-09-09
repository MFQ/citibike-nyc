require 'minitest/autorun'
require 'citibikenyc'
require_relative '../lib/citibikenyc/feeds'
require_relative '../lib/citibikenyc/station_status'
require_relative '../lib/citibikenyc/station_information'
require_relative '../lib/citibikenyc/region'


class CitibikenycTest < Minitest::Test

  def setup
    @api = Citibikenyc::Api.new
  end

  def test_init
    assert(@api)
  end

  def test_get_feeds
    feeds = @api.get_feeds
    assert( feeds.any? )
    assert( @api.feeds.any? )
    assert( feeds.last.class == Feed )
  end

  def test_get_stations_status
    station_status = @api.get_station_status
    assert( station_status.any? )
    assert( @api.station_status.any? )
    assert( station_status.last.class == StationStatus )
  end

  def test_get_station_information
    station_information = @api.get_station_information
    assert( station_information.any? )
    assert( @api.station_information.any? )
    assert( station_information.last.class == StationInformation )
  end

  def test_get_system_regions
    regions = @api.get_system_regions
    assert( regions.any? )
    assert( @api.system_regions.any? )
    assert( regions.last.class == Region)
  end

end
