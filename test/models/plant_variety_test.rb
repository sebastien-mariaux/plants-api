require "test_helper"

class PlantVarietyTest < ActiveSupport::TestCase
  should validate_presence_of(:name)
  
end
