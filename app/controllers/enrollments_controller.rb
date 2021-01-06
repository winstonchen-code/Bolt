class EnrollmentsController < ApplicationController
    before_action :not_logged_in, only: [:show]

    def new
        @enrollment = Enrollment.new
    end
     
    def create
        @enrollment = Enrollment.new(enrollment_params)
        if @enrollment.valid?
           @enrollment.save
           session[:id] = @enrollment.id 
           redirect_to enrollment_path(@enrollment)
        else
           flash[:errors] = @enrollment.errors.full_messages
           redirect_to new_user_path
        end
    end
    def show
        @enrollment = Enrollment.find(params[:id])
    end 
    
    def edit
        @enrollment = Enrollment.find(params[:id])
    end
    
    def update
        @enrollment = Enrollment.find(params[:id])
        @enrollment.update(enrollment_params)
        redirect_to enrollment_path(@enrollment)
    end
    
    def enrollment_params
        params.require(:enrollment).permit(:member_id, :run_session_id)
    end
end
