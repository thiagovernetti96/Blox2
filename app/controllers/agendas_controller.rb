class AgendasController < ApplicationController
    def create
        @agenda = Agenda.new
        @agenda.user = current_user
        @agenda.activity = Activity.find(params[:activity_id])
        @agenda.save
        redirect_to activity_path(@exploration.activity)
    end
end
