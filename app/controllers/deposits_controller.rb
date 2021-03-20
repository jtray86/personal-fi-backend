class DepositsController < ApplicationController
    def index
        user = User.find_by(id: params[:id])
        all_deposits = user.deposits

        render json: all_deposits
    end
end
