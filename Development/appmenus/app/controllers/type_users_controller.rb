class TypeUsersController < ApplicationController
  before_action :set_type_user, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @type_users = TypeUser.all
    respond_with(@type_users)
  end

  def show
    respond_with(@type_user)
  end

  def new
    @type_user = TypeUser.new
    respond_with(@type_user)
  end

  def edit
  end

  def create
    @type_user = TypeUser.new(type_user_params)
    @type_user.save
    respond_with(@type_user)
  end

  def update
    @type_user.update(type_user_params)
    respond_with(@type_user)
  end

  def destroy
    @type_user.destroy
    respond_with(@type_user)
  end

  private
    def set_type_user
      @type_user = TypeUser.find(params[:id])
    end

    def type_user_params
      params.require(:type_user).permit(:codetype, :nametype, :created_at, :update_at)
    end
end
