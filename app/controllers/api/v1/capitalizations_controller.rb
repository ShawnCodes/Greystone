class Api::V1::CapitalizationsController < ApplicationController
  # Since in this case there's only one user, we make all the post fetch to `/api/v1/capitalizations/1`
  # Assuming from a post fetch, we receive the following params: {id: 1, capitalization: {rate: 123}}

  def index
    @capitalizations = Capitalization.all
    render json: @capitalizations
  end

  def show
    # not needed
  end

  def create
    @user = User.find(params[:id]) # In our case id = 1
    @capitalization = @user.capitalization.create(rate: params[:capitalization][:rate])
    # render json: @capitalization
  end

  def update
    @user = User.find(params[:id]) # In our case id = 1
    @capitalization = @user.capitalization
    @capitalization.update(rate: params[:capitalization][:rate])
    @capitalization.save
    # render json: @capitalization
  end

  def destroy
    @capitalization = User.find(params[:id]).capitalization
    @capitalization.destroy
  end
end
