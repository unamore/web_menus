class UserOrdersController < ApplicationController
  before_action :set_user_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @user_orders = UserOrder.all
    respond_with(@user_orders)
  end

  def show
    respond_with(@user_order)
  end

  def new
    @user_order = UserOrder.new
    respond_with(@user_order)
  end

  def edit
  end

  def create
    @user_order = UserOrder.new(user_order_params)
    @user_order.save
    respond_with(@user_order)
  end

  def update
    @user_order.update(user_order_params)
    respond_with(@user_order)
  end

  def destroy
    @user_order.destroy
    respond_with(@user_order)
  end

  private
    def set_user_order
      @user_order = UserOrder.find(params[:id])
    end

    def user_order_params
      params.require(:user_order).permit(:user_id, :order_id)
    end
end
