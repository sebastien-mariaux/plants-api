# frozen_string_literal: true

Rails.application.routes.draw do
  resources :plant_varieties, only: %i[index show create update]
end
