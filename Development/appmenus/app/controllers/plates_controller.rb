class PlatesController < ApplicationController
  before_action :set_plate, only: [:show, :edit, :update, :destroy]
  before_action :set_typeplate

  respond_to :html

  def index
    #@plates = Plate.all
    @plates = @typeplate.plates
    respond_with(@typeplate, @plates)
  end

  def show
    respond_with(@plate)
  end

  def new
    @plate = Plate.new
    respond_with(@plate)
  end

  def edit
  end

  def create
    @plate = Plate.new(plate_params)
    @plate.save
    respond_with(@plate)
  end

  def update
    @plate.update(plate_params)
    respond_with(@plate)
  end

  def destroy
    @plate.destroy
    respond_with(@plate)
  end

  private
    def set_plate
      @plate = Plate.find(params[:id])
    end

    def plate_params
      params.require(:plate).permit(:codeplate, :nameplate, :typeplate_id)
    end
end
