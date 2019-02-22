class Api::CropsController < ApplicationController
  before_action :set_crop, only: [:show, :update, :destroy]
  
  def index
    render json: Crop.all
  end

  def create
    crop = Crop.new(crop_params)
    if crop.save
      render json: crop
    else
      render json: { message: crop.errors }, status: 400
    end
  end

  def show
    render json: @crop
  end

  def update
    if @crop.update(crop_params)
      render json: @crop
    else 
      render json: { message: @crop.errors }, status: 400
    end
  end

  def destroy
    if @crop.destroy
      render status: 204
    else 
      render json: { message: "Unable to remove this crop" }, status: 400
    end 
  end

  private
  def set_crop
    @crop = Crop.find_by(id: params[:id])
  end

  def crop_params
    params.require(:crop).permit(:name, :variety, :sow_by, :harvest, :days_to_harvest, :number_of_beds, :notes, :img_url)
  end
end