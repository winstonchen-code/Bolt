class FavoriteClassesController < ApplicationController
    before_action :not_logged_in, only: [:show]

    def new
        @favorite_class = FavoriteClass.new
    end
     
    def create
        @favorite_class = FavoriteClass.create(favorite_class_params)
        redirect_to member_path(@favorite_class.member)
    end
    def show
        @favorite_class = FavoriteClass.find(params[:id])
    end 
    
    def edit
        @favorite_class = FavoriteClass.find(params[:id])
    end
    
    def update
        @favorite_class = FavoriteClass.find(params[:id])
        @favorite_class.update(favorite_class_params)
        redirect_to favorite_class_path(@favorite_class)
    end

    def destroy
        @favorite_class = FavoriteClass.find_by(id: params[:id])
        @favorite_class.destroy
        redirect_to member_path(@favorite_class.member)
    end
    
    def favorite_class_params
        params.require(:favorite_class).permit(:member_id, :run_class_id)
    end

end
