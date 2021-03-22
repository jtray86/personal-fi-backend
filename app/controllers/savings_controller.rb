class SavingsController < ApplicationController
    def index
        user = User.find_by(id: params[:id])
        all_savings = user.savings.uniq

        render json: all_savings
    end

    def update
        saving = Saving.find_by(id: params[:id])
        saving.update(amount: params[:amount])
      
        render json: saving
      end
end
