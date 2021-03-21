class TransactionsController < ApplicationController
    def index
        user = User.find_by(id: params[:id])
        all_transactions = user.transactions

        render json: all_transactions
    end

    def create
        transaction_params = params.permit(:user_id, :debt_id, :transaction_date, :amount)
        # create a new user in the database (User.create)
        transaction = Transaction.create(transaction_params)
        if transaction.valid?
            # send back a response with new user
            render json: transaction, status: :created
        else
            # error messages
            render json: { errors: transaction.errors.full_messages }, status: :unprocessable_entity
        end
    end    
end
