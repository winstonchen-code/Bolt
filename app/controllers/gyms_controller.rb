class GymsController < ApplicationController

    def index
        if params[:indoor_or_outdoor] == "true"
            @gym_type = "Indoor"
            @gyms = Gym.indoor
        elsif params[:indoor_or_outdoor] == "false" 
            @gym_type = "Outdoor"
            @gyms = Gym.outdoor 
        else
            @gyms = Gym.all 
        end 
    end 

    def show
        @gym = Gym.find(params[:id])
    end 

end
