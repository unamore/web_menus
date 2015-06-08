class PlateOrdersController < ApplicationController
  before_action :set_plate_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @plate_orders = PlateOrder.all
    respond_with(@plate_orders)
  end

  def show
    respond_with(@plate_order)
  end

  def new
    @plate_order = PlateOrder.new
    respond_with(@plate_order)
  end

  def edit
  end

  def create
    @plate_order = PlateOrder.new(plate_order_params)
    @plate_order.save
    respond_with(@plate_order)
  end

  def update
    @plate_order.update(plate_order_params)
    respond_with(@plate_order)
  end

  def destroy
    @plate_order.destroy
    respond_with(@plate_order)
  end

  private
    def set_plate_order
      @plate_order = PlateOrder.find(params[:id])
    end

    def plate_order_params
      params.require(:plate_order).permit(:plate_id, :order_id)
    end
end
