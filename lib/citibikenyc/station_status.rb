class StationStatus
  attr_reader :station_id, :name, :short_name, :lat, :lon, :region_id, :rental_methods, :capacity, :rental_url,
    :eightd_has_key_dispenser, :eightd_station_services, :has_kiosk

  def initialize()
    @station_id = @name = @short_name = @lat = @lon = @region_id = @rental_methods =
    @capacity = @rental_url = @eightd_has_key_dispenser = @eightd_station_services = @has_kiosk = ""
  end

  def initialize(args)
    @station_id = args["station_id"]
    @name = args["name"]
    @short_name =  args["short_name"]
    @lat = args["lat"]
    @lon = args["lon"]
    @region_id = args["region_id"]
    @rental_methods = args["rental_methods"]
    @capacity = args["capacity"]
    @rental_url = args["rental_url"]
    @eightd_has_key_dispenser = args["eightd_has_key_dispenser"]
    @eightd_station_services = args["eightd_station_services"]
    @has_kiosk = args["has_kiosk"]
  end
end
