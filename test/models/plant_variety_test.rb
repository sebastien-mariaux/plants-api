# frozen_string_literal: true

require 'test_helper'

class PlantVarietyTest < ActiveSupport::TestCase
  should validate_presence_of(:name)
  should validate_uniqueness_of(:name)
end
