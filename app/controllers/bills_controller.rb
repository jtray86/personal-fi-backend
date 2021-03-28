class BillsController < ApplicationController
    def index
        user = User.find_by(id: params[:id])
        all_bills = user.bills

        render json: all_bills
    end

    def show
        bill = Bill.find_by(id: params[:id])

        render json: bill
    end

    def update
        bill = Bill.find_by(id: params[:id])
        bill.update(actual: params[:actual])
      
        render json: bill
      end

    def create
        bill_params = params.permit(:user_id, :outgoing_id, :actual, :paid_date)
        # create a new user in the database (User.create)
        bill = Bill.create(bill_params)
        if bill.valid?
            # send back a response with new user
            render json: bill, status: :created
        else
            # error messages
            render json: { errors: bill.errors.full_messages }, status: :unprocessable_entity
        end
    end
end
