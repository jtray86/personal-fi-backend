class TransactionsController < ApplicationController
    def index
        user = User.find_by(id: params[:id])
        all_transactions = user.transactions

        render json: all_transactions
    end

    def create
        transaction_params = params.permit(:user_id, :debt_id, :transaction_date, :amount)
       
        transaction = Transaction.create(transaction_params)
        if transaction.valid?
            
            render json: transaction, status: :created
        else
            
            render json: { errors: transaction.errors.full_messages }, status: :unprocessable_entity
        end
    end    
end
