class EarningsController < ApplicationController
    def index
        user = User.find_by(id: params[:id])
        all_debts = user.earnings

        render json: all_debts
    end

    def update
        earning = Earning.find_by(id: params[:id])
        earning.update(actual: params[:actual])
      
        render json: earning
      end

    def create
        earning_params = params.permit(:user_id, :income_id, :pay_day)
        # create a new user in the database (User.create)
        earning = Earning.create(earning_params)
        if earning.valid?
            # send back a response with new user
            render json: earning, status: :created
        else
            # error messages
            render json: { errors: earning.errors.full_messages }, status: :unprocessable_entity
        end
    end
end
