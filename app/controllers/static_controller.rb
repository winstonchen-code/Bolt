class StaticController < ApplicationController
    def home
        render "home"
    end

    def membership 
        render "membership"
    end

    def homepage 
        render "virtual"
    end

    def training
        render "training"
    end
end
