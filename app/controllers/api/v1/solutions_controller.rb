class Api::V1::SolutionsController < ApplicationController
  before_action :find_user, only: [:show]

  def index
  end

  def show
    total_annual_rent = @user.roll.rent * 12
    total_expenses = @user.expense.values.reduce(:+) # add all values in a particular user's expense table
    net_operating_income = total_annual_rent - total_expenses
    debt_rate = 0.02954 + 0.02 # right now 10 year Treasury is 2.954 %
    debt_payment = debt_rate * # LoanProceeds
    debt_service = net_operating_income / debt_payment
    value = net_operating_income / @user.capitalization.rate
    present_value = 0 # 0 / (1 + debt_rate) ** (12 * 10)
    loan_amount =
    output = {loan_amount: 123, debt_rate: 0.04954}
    render json: output
  end

  private
  def find_user
    @user = User.find(params: [:id])
  end
end
