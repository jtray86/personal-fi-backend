class BillsController < ApplicationController
    def index
        user = User.find_by(id: params[:id])
        all_bills = user.bills

        render json: all_bills
    end
end
