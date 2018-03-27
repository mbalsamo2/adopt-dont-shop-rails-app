class UsersController < ApplicationController
  before_action :set_user!, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      set_session(@user.id)
      redirect_to :root
    else
      render :new
    end
  end

  def edit

  end

  def update
  end

  def destroy
  end

  private

end
