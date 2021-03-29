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

    def create
        debt_params = params.permit(:debt_type, :name, :inital_amount, :current_amount, :interest, :in_collection)
        
        debt = Debt.create(debt_params)
        if debt.valid?
            
            render json: debt, status: :created
        else
            
            render json: { errors: debt.errors.full_messages }, status: :unprocessable_entity
        end
    end 
end
