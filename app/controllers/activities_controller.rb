class ActivitiesController < ApplicationController


  def index
    activities = Activity.all
    render json: activities
  end

  def show
    activity = Activity.find(params[:id])
    render json: activity
  end

  def destroy
    activity = Activity.find(params[:id])
    render json: {}
    head :no_content

    rescue ActiveRecord::RecordNotFound    
    render json: { "error": "Activity not found" }, status: :not_found
  end



end
