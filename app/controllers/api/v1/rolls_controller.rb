class Api::V1::RollsController < ApplicationController
  before_action :find_user, only: [:create, :update]
  # Since in this case there's only one user, we make all the post fetch to `/api/v1/rolls/1`
  # Assuming from a post fetch, we receive the following params: {id: 1, roll: {address: '', unit: '', vacancy: '', monthly: 123, bedrooms: 123, bathrooms: 123, annual: 123}}

  def index
    @rolls = Roll.all
    render json: @rolls
  end

  def show
    # not needed
  end

  def create
    # @user = User.find(params[:id]) # In our case id = 1
    @roll = @user.roll.create(address: params[:roll][:address], unit: params[:roll][:unit], vacancy: params[:roll][:vacancy], monthly: params[:roll][:monthly], bedrooms: params[:roll][:bedrooms], bathrooms: params[:roll][:bathrooms], annual: params[:roll][:annual])
    # render json: @roll
  end

  def update
    # @user = User.find(params[:id]) # In our case id = 1
    @roll = @user.roll
    @roll.update(address: params[:roll][:address], unit: params[:roll][:unit], vacancy: params[:roll][:vacancy], monthly: params[:roll][:monthly], bedrooms: params[:roll][:bedrooms], bathrooms: params[:roll][:bathrooms], annual: params[:roll][:annual])
    @roll.save
    # render json: @roll
  end

  def destroy
    @roll = User.find(params[:id]).roll
    @roll.destroy
  end

  private
  def find_user
    @user = User.find(params[:id])
  end
end
