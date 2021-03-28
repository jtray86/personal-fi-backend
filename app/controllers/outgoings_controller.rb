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

    def delete
        outgoing = Outgoing.find_by(id: params[:id])
    
        outgoing.destroy

        render json: outgoing
    end
end
