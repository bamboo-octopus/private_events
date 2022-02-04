class AttendedEventsController < ApplicationController

    def new        
        @user = current_user
        @users = User.all
        @event = Event.find(params[:event_id])
        @attended_event = AttendedEvent.new(event_id: params[:event_id])
    end

    def create
        @user = current_user
       

        @attended_event = AttendedEvent.new(attended_event_params)

        if @attended_event.save
            redirect_to root_path

        else
            render :new
        end
    end

    private
    def attended_event_params
        params.require(:attended_event).permit(:attendee_id, :event_id)
    end
end
