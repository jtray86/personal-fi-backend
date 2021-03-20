class DebtsController < ApplicationController

    def index
        user = User.find_by(id: params[:id])
        all_debts = user.debts.uniq

        render json: all_debts
    end
end
