class IncomesController < ApplicationController
    def index
        user = User.find_by(id: params[:id])
        all_income = user.incomes.uniq

        render json: all_income
    end
end
