class IncomesController < ApplicationController
    def index
        user = User.find_by(id: params[:id])
        all_income = user.incomes.uniq

        render json: all_income
    end

    def create
        income_params = params.permit(:income_type, :name, :projected)
        # create a new user in the database (User.create)
        income = Income.create(income_params)
        if income.valid?
            # send back a response with new user
            render json: income, status: :created
        else
            # error messages
            render json: { errors: income.errors.full_messages }, status: :unprocessable_entity
        end
    end
end
