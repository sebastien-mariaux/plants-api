# frozen_string_literal: true

class PlantVarietiesController < ApplicationController
  before_action :load_plant_variety, only: %i[show update]

  def index
    varieties = PlantVariety.all
    render json: varieties
  end

  def show
    render json: @plant_variety
  end

  def create
    variety = PlantVariety.new(allowed_params)
    if variety.save
      render json: variety, status: :created
    else
      render json: variety.errors.messages, status: :unprocessable_entity
    end
  end

  def update
    if @plant_variety.update(allowed_params)
      render json: @plant_variety
    else
      render json: @plant_variety.errors.messages, status: :unprocessable_entity
    end
  end

  private

  def load_plant_variety
    @plant_variety = PlantVariety.find_by(id: params[:id])
    head :not_found if @plant_variety.nil?
  end

  def allowed_params
    params.permit(:name)
  end
end
