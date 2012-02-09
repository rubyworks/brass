require 'test-unit'
require 'brass'
require 'brass/adapters/testunit'

class ExampleTest < Test::Unit::TestCase

  def test_example
    e = StandardError.new('abstract brass assertion')
    e.set_assertion(true)
    raise e
  end

end
