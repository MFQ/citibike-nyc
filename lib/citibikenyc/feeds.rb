require_relative 'constants'

class Feed
  attr_reader :name, :url

  def initialize
    @name = @url = ""
  end

  def initialize(name, url)
    @name = name
    @url = url
    @url.slice!(Citibikenyc::Constants[:service_name])
  end

end
