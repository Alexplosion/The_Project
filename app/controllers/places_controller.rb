class PlacesController < ApplicationController
    before_action :set_place, only: [:show, :edit, :update, :destroy]

    def index 
        @places = Place.all
    end 

    def new
        @place = Place.new
    end

    def create 
        @place = Place.create(place_params)
        if @place.save
             flash[:success] = "Your new place has been created !"
        redirect_to @place
        else 
             flash.now[:alert] = "Your new place couldn't be created!  Please check the form."
            render 'new'
        end
    end

    def show
        set_place
    end

    def edit 
        set_place
    end 

    def update
        set_place
        if
            @place.update(place_params)
            flash[:success] = "Votre place a bien été modifié !"
        redirect_to(place_path(@place))
        else 
            flash.now[:alert] = "Nous avons rencontré un problème. Veuillez vérifier le formulaire"
            render 
        end
    end

    
    def destroy
        set_place
        @place.destroy
        redirect_to places_path
    end



    private 

    def place_params
        params.require(:place).permit(:description, :name)
    end


    def set_place
        @place = Place.find(params[:id])
    end
end
