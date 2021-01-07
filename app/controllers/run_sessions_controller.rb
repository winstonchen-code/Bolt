class RunSessionsController < ApplicationController

    def index
        @run_sessions = RunSession.all 
    end 

    def show
        @run_session = RunSession.find(params[:id])
    end 

end
