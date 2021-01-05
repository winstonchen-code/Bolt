class SessionsController < ApplicationController

    def new
        @member = Member.new
    end

    def create
        @member = Member.find_by(email: params[:member][:email]) 
        if @member && @member.authenticate(params[:member][:password])
          session[:id] = @member.id
          redirect_to member_path(@member)
        else
        flash[:errors] = ['Email or password is incorrect']
        redirect_to login_path
        end
    end
    
    def destroy
        session.clear
        redirect_to login_path
    end
    
end
