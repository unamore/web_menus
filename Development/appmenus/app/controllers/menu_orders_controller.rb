class MenuOrdersController < ApplicationController
  before_action :set_menu_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @menu_orders = MenuOrder.all
    respond_with(@menu_orders)
  end

  def show
    respond_with(@menu_order)
  end

  def new
    @menu_order = MenuOrder.new
    respond_with(@menu_order)
  end

  def edit
  end

  def create
    @menu_order = MenuOrder.new(menu_order_params)
    @menu_order.save
    respond_with(@menu_order)
  end

  def update
    @menu_order.update(menu_order_params)
    respond_with(@menu_order)
  end

  def destroy
    @menu_order.destroy
    respond_with(@menu_order)
  end

  private
    def set_menu_order
      @menu_order = MenuOrder.find(params[:id])
    end

    def menu_order_params
      params.require(:menu_order).permit(:menu_id, :order_id)
    end
end
