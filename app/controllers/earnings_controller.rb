class EarningsController < ApplicationController
    def index
        user = User.find_by(id: params[:id])
        all_debts = user.earnings

        render json: all_debts
    end
end
