class Api::V1::RollsController < ApplicationController
  # Since in this case there's only one user, we make all the post fetch to `/api/v1/expenses/1`
  # Assuming from a post fetch, we receive the following params: {id: 1, expense: {taxes: 123, insurance: 123, repairs: 123, administration: 123, utility: 123, management: 123}}

  def index
    @expenses = Expense.all
    render json: @expenses
  end

  def show
    # not needed
  end

  def create
    @user = User.find(params[:id]) # In our case id = 1
    @expense = @user.expense.create(taxes: params[:expense][:taxes], insurance: params[:expense][:insurance], repairs: params[:expense][:repairs], administration: params[:expense][:administration], utility: params[:expense][:utility], managements: params[:expense][:management])
    # render json: @expense
  end

  def update
    @user = User.find(params[:id]) # In our case id = 1
    @expense = @user.expense
    @expense.update(taxes: params[:expense][:taxes], insurance: params[:expense][:insurance], repairs: params[:expense][:repairs], administration: params[:expense][:administration], utility: params[:expense][:utility], managements: params[:expense][:management])
    @expense.save
    # render json: @expense
  end

  def destroy
    @expense = User.find(params[:id]).expense
    @expense.destroy
  end
end
