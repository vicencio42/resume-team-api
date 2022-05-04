class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    student = Student.find_by(id: params["id"])
    render json: student
  end

  def create
    student = Student.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      email: params["email"],
      phone_number: params["phone_number"],
      short_bio: params["short_bio"],
      linkedin_url: params["linkedin_url"],
      twitter_handle: params["twitter_handle"],
      personal_blog: params["personal_blog"],
      resume: params["resume"],
      github_url: params["github_url"],
      photo: params["photo"]
    )
    if student.save #happy path
      render json: student
    else #sad path
      render json: {error_message: student.errors.full_messages}, status: 422
    end
  end

  def update
    student_id = params["id"]
    student = Student.find(student_id)

    student.first_name = params["first_name"] || student.first_name
    student.last_name = params["last_name"] || student.last_name
    student.email = params["email"] || student.email
    student.phone_number = params["phone_number"] || student.phone_number
    student.short_bio = params["short_bio"] || student.short_bio
    student.linkedin_url = params["linkedin_url"] || student.linkedin_url
    student.twitter_handle = params["twitter_handle"] || student.twitter_handle
    student.personal_blog = params["personal_blog"] || student.personal_blog
    student.resume = params["resume"] || student.resume
    student.github_url = params["github_url"] || student.github_url
    student.photo = params["photo"] || student.photo

    if student.save #happy path
      render json: student
    else #sad path
      render json: {error_message: studen.errors.full_messages}, status: 422
    end
  end    

  def destroy
    student_id = params["id"]
    student = Student.find(student_id)
    student.destroy
    render json: {message: "Student has been destroyed!"}
  end

end
