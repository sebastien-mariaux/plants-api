# frozen_string_literal: true

require 'test_helper'

class PlantVarietiesControllerTest < ActionDispatch::IntegrationTest
  should 'index' do
    get plant_varieties_path
    assert_response :success
    expected = PlantVariety.pluck(:name)
    result = json_response.map { |variety| variety['name'] }
    assert_same_elements expected, result
  end

  should 'show' do
    variety = plant_varieties(:pothos)
    get plant_variety_path(variety)
    assert_response :success
    expected = { 'name' => 'Pothos' }
    assert_equal expected, json_response.slice('name')
  end

  should 'fail to show' do
    get plant_variety_path('invalid_id')
    assert_response :not_found
    assert response.body.blank?
  end

  should 'create' do
    params = {plant_variety: { name: 'Pilea' }}
    post plant_varieties_path, params: params
    assert_response :created
    expected = { 'name' => 'Pilea' }
    assert_equal expected, json_response.slice('name')
  end

  should 'fail to create' do
    params = {plant_variety: { description: 'Pilea' }}
    post plant_varieties_path, params: params
    assert_response :unprocessable_entity
    expected = { 'name' => ["can't be blank"] }
    assert_equal expected, json_response
  end

  should 'update' do
    variety = plant_varieties(:pothos)
    params = {plant_variety: { name: 'new name' }}
    put plant_variety_path(variety), params: params
    assert_response :success
    expected = { 'name' => 'new name' }
    assert_equal expected, json_response.slice('name')
  end

  should 'fail to update' do
    variety = plant_varieties(:pothos)
    params = {plant_variety: { name: '' }}
    put plant_variety_path(variety), params: params
    assert_response :unprocessable_entity
    expected = { 'name' => ["can't be blank"] }
    assert_equal expected, json_response
  end
end
