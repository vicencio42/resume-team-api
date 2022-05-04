class ExperiencesController < ApplicationController
  def index
    experiences = Experience.all
    render json: experiences
  end

  def create
    experience = Experience.new(
      start_date: params["start_date"],
      end_date: params["end_date"],
      job_title: params["job_title"],
      company_name: params["company_name"],
      details: params["details"]
    )
    if experience.save #happy path
      render json: experience 
    else #sad path
      render json: {error_messages: experience.errors.full_messages}, status: 422
    end 
  end

  def show
    id = params[:id]
    experience = Experience.find_by(id: id)
    render json: experience
  end

  def update
    id = params[:id]
    experience = Experience.find_by(id: id)

    experience.start_date = params[:start_date] || experience.start_date
    experience.end_date = params[:end_date] || experience.end_date
    experience.job_title = params[:job_title] || experience.job_title
    experience.company_name = params[:company_name] || experience.company_name
    experience.details = params[:details] || experience.details
    
    if experience.save #happy path 
      render json: experience
    else #sad path
      render json: {error_messages: experience.errors.full_messages}, status: 422 
    end 
  end

  def destroy
    id = params[:id]
    experience = Experience.find_by(id: id)
    experience.destroy

    render json: {message: "Experience successfully destroyed."}
  end
end
