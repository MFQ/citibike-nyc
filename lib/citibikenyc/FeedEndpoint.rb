require_relative 'constants'

class FeedEndpoint
  attr_reader :name, :url

  def initialize
    @name = @url = ""
  end

  def initialize(name, url)
    @name = name
    @url = url.slice(Constants[:service_name])
  end

end
