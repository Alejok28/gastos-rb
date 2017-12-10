class ExpensesController < ApplicationController
  def index
    @expenses = Expense.order("date DESC").concepto("%#{params[:concept]}%").id("%#{params[:category_id]}%")
    # @expenses = Expense.where("concept like ?", "%#{params[:concept]}%")
    # @expenses = Expense.where("category_id = ? ", params[:category_id])


  end
end
