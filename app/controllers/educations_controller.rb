class EducationsController < ApplicationController
  def index
    educations = Education.all
    render json: educations
  end

  def create
    education = Education.new(
      start_date: params["start_date"],
      end_date: params["end_date"],
      degree: params["degree"],
      university_name: params["university_name"],
      details: params["details"]
    )
    if education.save #happy path
      render json: education 
    else #sad path
      render json: {error_messages: education.errors.full_messages}, status: 422
    end
  end

  def show
    id = params[:id]
    education = Education.find_by(id: id)
    render json: education
  end

  def update
    id = params[:id]
    education = Education.find_by(id: id)

    education.start_date = params[:start_date] || education.start_date
    education.end_date = params[:end_date] || education.end_date
    education.degree = params[:degree] || education.degree
    education.university_name = params[:university_name] || education.university_name
    education.details = params[:details] || education.details
    
    if education.save #happy path
      render json: education 
    else #sad path
      render json: {error_messages: education.errors.full_messages}, status: 422
    end
  end

  def destroy
    id = params[:id]
    education = Education.find_by(id: id)
    education.destroy

    render json: {message: "Education successfully destroyed."}
  end
end
