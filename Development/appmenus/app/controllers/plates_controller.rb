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
    respond_with(@typeplate, @plate)
  end

  def new
    @plate = @typeplate.plates.new
    respond_with(@typeplate, @plate)
  end

  def edit
  end

  def create
    @plate = @typeplate.plates.new(plate_params)
    @plate.save
    respond_with(@typeplate)
  end

  def update
    @plate.update(plate_params)
    respond_with(@typeplate)
  end

  def destroy
    @plate.destroy
    respond_with(@typeplate)
  end

  private
    def set_plate
      @plate = Plate.find(params[:id])
    end
    def set_typeplate
      @typeplate = Typeplate.find(params[:typeplate_id])
    end
    
    def plate_params
      params.require(:plate).permit(:codeplate, :nameplate, :typeplate_id)
    end
end
