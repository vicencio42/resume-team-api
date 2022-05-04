class CapstonesController < ApplicationController
  def index
    capstones = Capstone.all
    render json: capstones
  end

  def show
    capstone = Capstone.find_by(id: params["id"])
    render json: capstone
  end

  def create
    capstone = Capstone.new(
      capstone_name: params["capstone_name"],
      description: params["description"],
      url: params["url"],
      screenshot: params["screenshot"]
      
    )
    if capstone.save #happy path
      render json: capstone
    else #sad path
      render json: {error_message: capstone.errors.full_messages}, status: 422
    end
  end

  def updated
    capstone_id = params["id"]
    capstone = Capstone.find(capstone_id)

    capstone.capstone_name = params["capstone_name"] || capstone.capstone_name
    capstone.description = params["description"] || capstone.description
    capstone.url = params["url"] || capstone.url
    capstone.screenshot = params["screenshot"] || capstone.screenshot
   

    if capstone.save #happy path
      render json: capstone
    else #sad path
      render json: {error_message: capstone.errors.full_messages}, status: 422
    end
  end    

  def destroy
    capstone_id = params["id"]
    capstone = Capstone.find(capstone_id)
    capstone.destroy
    render json: {message: "Capstone has been destroyed!"}
  end
end
