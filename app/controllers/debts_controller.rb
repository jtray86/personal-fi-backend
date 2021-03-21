class DebtsController < ApplicationController

    def index
        user = User.find_by(id: params[:id])
        all_debts = user.debts.uniq

        render json: all_debts
    end
    def update
        debt = Debt.find_by(id: params[:id])
        debt.update(current_amount: params[:current_amount])
      
        render json: debt
      end
end
