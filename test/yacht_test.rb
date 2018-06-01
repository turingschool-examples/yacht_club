require "minitest/autorun"
require "minitest/pride"

class YachtTest < Minitest::Test
  def test_it_exists
    yacht = Yacht.new("S.S. Minnow", 40)    

    assert_instance_of Yacht, yacht
  end

  def test_it_has_attributes
    yacht = Yacht.new("S.S. Minnow", 40)    

    assert_equal "S.S. Minnow", yacht.name
    assert_equal 40, yacht.length
  end

  def test_it_has_different_attribites
    yacht = Yacht.new("Octopus", 75)

    assert_equal "Octopus", yacht.name
    assert_equal 75, yacht.length
  end
  
  def test_it_can_sail
    yacht = Yacht.new("Octopus", 75)
    
    assert_equal false, yacht.sailing?
    assert_equal "Aye, aye!", yacht.sail
    assert_equal true, yacht.sailing?
  end
end
