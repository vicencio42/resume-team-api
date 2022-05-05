class SkillsController < ApplicationController
  def index
    skills = Skill.all
    render json: skills
  end

  def show
    skills = Skill.find_by(id: params["id"])
    render json: skills
  end

  def create
    skill = Skill.new(
      skill_name: params["skill_name"],
    )
    if skill.save #happy path
      render json: skill
    else #sad path
      render json: {error_message: skill.errors.full_messages}, status: 422
    end
  end

  def updated
    skill_id = params["id"]
    skill = Skill.find(skill_id)

    skill.skill_name = params["skill_name"] || skill.skill_name
   

    if skill.save #happy path
      render json: skill
    else #sad path
      render json: {error_message: skill.errors.full_messages}, status: 422
    end
  end    

  def destroy
    skill_id = params["id"]
    skill = Skill.find(skill_id)
    skill.destroy
    render json: {message: "Skill has been destroyed!"}
  end
end
