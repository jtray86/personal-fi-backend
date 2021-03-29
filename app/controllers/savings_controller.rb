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

      def create
        saving_params = params.permit(:saving_type, :name, :amount)
        
        saving = Saving.create(saving_params)
        if saving.valid?
            
            render json: saving, status: :created
        else
            
            render json: { errors: saving.errors.full_messages }, status: :unprocessable_entity
        end
    end
end
