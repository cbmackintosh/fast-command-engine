class IncidentsController < ApplicationController

  def index
    @incidents = Incident.filter_by_user(params[:user_id]) if params[:user_id].present?
    if @incidents
      render json: {
        incident: @incidents
      }
    else
      render json: {
        status: 500,
        errors: ['incident not found']
      }
    end
  end

  def create
    @incident = Incident.new(incident_params)
    if @incident.save
      render json: {
        status: :created,
        incident: @incident
      }
    else 
      render json: {
        status: 500,
        errors: @incident.errors.full_messages
      }
    end
  end
private
  
  def incident_params
    params.require(:incident).permit(:name, :summary, :user_id)
  end
  
end
