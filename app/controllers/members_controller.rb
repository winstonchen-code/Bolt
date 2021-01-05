class MembersController < ApplicationController
    
    before_action :not_logged_in, only: [:show]

    def new
        @member = Member.new
    end
     
    def create
        @member = Member.new(member_params)
        if @member.valid?
           @member.save
           session[:id] = @member.id 
           redirect_to user_path(@member)
        else
           flash[:errors] = @member.errors.full_messages
           redirect_to new_user_path
        end
    end
    def show
        @member = Member.find(params[:id])
    end 
    def member_params
        params.require(:member).permit(:name, :age, :email, :password, :password_confirmation)
    end

end
