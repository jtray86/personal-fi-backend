class OutgoingsController < ApplicationController

    def index
        user = User.find_by(id: params[:id])
        all_outgoings = user.outgoings.uniq

        render json: all_outgoings
    end

    def delete
        outgoing = Outgoing.find_by(id: params[:id])
    
        outgoing.destroy

        render json: outgoing
    end
end
