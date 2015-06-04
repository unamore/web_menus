class TypeplatesController < ApplicationController
  before_action :set_typeplate, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @typeplates = Typeplate.all
    respond_with(@typeplates)
  end

  def show
    respond_with(@typeplate)
  end

  def new
    @typeplate = Typeplate.new
    respond_with(@typeplate)
  end

  def edit
  end

  def create
    @typeplate = Typeplate.new(typeplate_params)
    @typeplate.save
    respond_with(@typeplate)
  end

  def update
    @typeplate.update(typeplate_params)
    respond_with(@typeplate)
  end

  def destroy
    @typeplate.destroy
    respond_with(@typeplate)
  end

  private
    def set_typeplate
      @typeplate = Typeplate.find(params[:id])
    end

    def typeplate_params
      params.require(:typeplate).permit(:codetype, :nametype)
    end
end
