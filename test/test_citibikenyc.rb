require 'minitest/autorun'
require 'citibikenyc'

class CitibikenycTest < Minitest::Test
  def test_hello
    assert_equal 'Hello world!', Citibikenyc.hi
  end
end
