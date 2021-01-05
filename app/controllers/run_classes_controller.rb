class RunClassesController < ApplicationController

    def index
        @run_classes = RunClass.all 
    end 

    def show
        @run_class = RunClass.find(params[:id])
    end 
end
