class DepositsController < ApplicationController
    def index
        user = User.find_by(id: params[:id])
        all_deposits = user.deposits

        render json: all_deposits
    end

    def create
        deposit_params = params.permit(:user_id, :saving_id, :deposit_date, :amount)
        # create a new user in the database (User.create)
        deposit = Deposit.create(deposit_params)
        if deposit.valid?
            # send back a response with new user
            render json: deposit, status: :created
        else
            # error messages
            render json: { errors: deposit.errors.full_messages }, status: :unprocessable_entity
        end
    end
end
