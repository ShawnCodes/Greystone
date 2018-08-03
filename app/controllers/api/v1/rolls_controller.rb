class Api::V1::RollsController < ApplicationController
  # Since in this case there's only one user, we make all the post fetch to `/api/v1/rolls/1`
  # Assuming from a post fetch, we receive the following params: {id: 1, rolls: {address: '', unit: '', vacancy: '', monthly: 123, bedrooms: 123, bathrooms: 123, annual: 123}}

  def index
    @rolls = Roll.all
    render json: @rolls
  end

  def show
    # not needed
  end

  def create
    @user = User.find(params[:id]) # In our case id = 1
    @roll = @user.roll.create(address: params[:rolls][:address], unit: params[:rolls][:unit], vacancy: params[:rolls][:vacancy], monthly: params[:rolls][:monthly], bedrooms: params[:rolls][:bedrooms], bathrooms: params[:rolls][:bathrooms], annual: params[:rolls][:annual])
    # render json: @roll
  end

  def update
    @user = User.find(params[:id]) # In our case id = 1
    @roll = @user.roll.create(address: params[:rolls][:address], unit: params[:rolls][:unit], vacancy: params[:rolls][:vacancy], monthly: params[:rolls][:monthly], bedrooms: params[:rolls][:bedrooms], bathrooms: params[:rolls][:bathrooms], annual: params[:rolls][:annual])
    # render json: @roll
  end

  def destroy
    @roll = User.find(params[:id]).roll
    @roll.destroy
  end
end
