class DepositsController < ApplicationController
    def index
        user = User.find_by(id: params[:id])
        all_deposits = user.deposits

        render json: all_deposits
    end

    def create
        deposit_params = params.permit(:user_id, :saving_id, :deposit_date, :amount)

        deposit = Deposit.create(deposit_params)
        if deposit.valid?
            
            render json: deposit, status: :created
        else
           
            render json: { errors: deposit.errors.full_messages }, status: :unprocessable_entity
        end
    end
end
