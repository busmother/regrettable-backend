class IncidentsController < ApplicationController

    def show
        @incident = Incident.find(params[:id])
        @apologies = @incident.apologies
        @apology = Apology.new
    end

    def new
        @incidents = Incident.all
        @incident = Incident.new
        @incident.apologies.build
    end

    def create
        @incident = Incident.create!(incident_params)
        @apology = @incident.apologies.last
        redirect_to apology_path(@a
    end

    private

    def incident_params
        params.require(:incident).permit(
            :name,
            apologies_attributes: [
                :body,
                :user_id,
                :incident_id
            ]
        )
    end
end