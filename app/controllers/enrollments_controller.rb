class EnrollmentsController < ApplicationController
    before_action :not_logged_in, only: [:show]

    def new
        @enrollment = Enrollment.new
    end
     
    def create
        @enrollment = Enrollment.create(enrollment_params)
        redirect_to member_path(@enrollment.member)
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

    def destroy
        @enrollment = Enrollment.find_by(id: params[:id])
        @enrollment.destroy
        redirect_to member_path(@enrollment.member)
    end
    
    def enrollment_params
        params.require(:enrollment).permit(:member_id, :run_session_id)
    end
end
