class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show, :update, :destroy]
  # Assuming from a post fetch to users_path, we receive the following params: {name: ''}
  # Assuming from a post fetch to user_path, we receive the following params: {id: 1, name: ''}

  def index
    @users = User.all
    render json: @users
  end

  def show
    # @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.find_or_create_by(name: params[:name])
    # render json: @user
  end

  def update
    # @user = User.find(params[:id]) # In our case id = 1
    @user.update(name: params[:name])
    @user.save
    # render json: @user
  end

  def destroy
    # @user = User.find(params[:id])
    @user.destroy
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

end
