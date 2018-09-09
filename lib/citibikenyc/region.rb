class Region
  attr_reader :region_id, :name

  def initialize
    @region_id = @name = ""
  end

  def initialize(args)
    @region_id = args["region_id"]
    @name = args["name"]
  end
end
