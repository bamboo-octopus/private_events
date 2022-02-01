class EventsController < ApplicationController

    def index
        @events = Event.all
    end

    def show 
        @event = Event.find(params[:id])
    end

    def new
        @user = current_user
        @event = @user.events.build
        
    end

    def create
        @user = current_user
        @event = @user.events.build(event_params)

        if @event.save
            redirect_to root_path
        else
            render :new
        end

    end

    def edit

    end

    def update

    end

    private
    def event_params
        params.require(:event).permit(:name)
    end
end
