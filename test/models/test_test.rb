require "test_helper"

class TestTest < ActiveSupport::TestCase
  def test
    @test ||= Test.new
  end

  def test_valid
    assert test.valid?
  end
end
