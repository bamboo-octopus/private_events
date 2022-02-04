class UsersController < ApplicationController

    def show 
        @user = User.find(params[:id])
        @events = @user.events
        @events_invited_to = @user.attended_events
    end



end