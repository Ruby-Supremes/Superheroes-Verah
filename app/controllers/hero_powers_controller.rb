class HeroPowersController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :create_error
    
    def index
        heropowers = HeroPower.all
        render json: heropowers
    end

    def show
      heropower = find_heropowers
      render json: heropower
    end

      # delete hero
    def destroy
      hero = find_heropowers
      hero.destroy
      head :no_content
    end

  # create hero
  def create
    hero = HeroPower.create!(heropower_param)
    render json: hero,  status: 201
  end

  private 

  def find_heropowers
    HeroPower.find(params[:id])
  end
  
  def render_not_found_response
    render json: { error: "Hero_power not found" }, status: 404
  end

  def create_error
    render json: { error:  ["validation errors"]}, status: 422
  end

  def heropower_param
    params.permit(:strength, :power_id, :hero_id)
  end
end
