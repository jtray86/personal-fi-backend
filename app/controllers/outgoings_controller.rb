class OutgoingsController < ApplicationController

    def index
        user = User.find_by(id: params[:id])
        all_outgoings = user.outgoings.uniq

        render json: all_outgoings
    end

    def update
        outgoing = Outgoing.find_by(id: params[:id])
        outgoing.update(name: params[:editOutgoingForm][:name], 
        projected: params[:editOutgoingForm][:projected],
        due_date: params[:editOutgoingForm][:due_date])
      
        render json: outgoing
    end

    def create
        outgoing_params = params.permit(:outgoing_type, :name, :projected, :due_date)
        # create a new user in the database (User.create)
        outgoing = Outgoing.create(outgoing_params)
        if outgoing.valid?
            # send back a response with new user
            render json: outgoing, status: :created
        else
            # error messages
            render json: { errors: outgoing.errors.full_messages }, status: :unprocessable_entity
        end
    end  

    def delete
        outgoing = Outgoing.find_by(id: params[:id])
    
        outgoing.destroy

        render json: outgoing
    end
end
