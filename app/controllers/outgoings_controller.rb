class OutgoingsController < ApplicationController
    def delete
        outgoing = Outgoing.find_by(id: params[:id])
    
        outgoing.destroy

        render json: outgoing
    end
end
