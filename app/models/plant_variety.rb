# frozen_string_literal: true

class PlantVariety < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
