class Api::V1::SolutionsController < ApplicationController
  before_action :find_user, only: [:show]

  def index
  end

  def show
    total_annual_rent = @user.roll.rent * 12
    total_expenses = @user.expense.values.reduce(:+) # add all values in a particular user's expense table
    net_operating_income = total_annual_rent - total_expenses

    #calculations....
    

    output = {loan_amount: 123, debt_rate: 123}
    render json: output
  end

  private
  def find_user
    @user = User.find(params: [:id])
  end
end
