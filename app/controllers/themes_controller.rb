class ThemesController < ApplicationController
    before_action :set_theme, only: [:show, :edit, :update, :destroy]

    def index 
        @themes = Theme.all
    end 

    def new
        @theme = Theme.new
    end

    def create 
        @theme = Theme.create(theme_params)
        if @theme.save
             flash[:success] = "Your new theme has been created !"
        redirect_to @theme
        else 
             flash.now[:alert] = "Your new theme couldn't be created!  Please check the form."
            render 'new'
        end
    end

    def show
        set_theme
    end

    def edit 
        set_theme
    end 

    def update
        set_theme
        if
            @theme.update(theme_params)
            flash[:success] = "Votre theme a bien été modifié !"
        redirect_to(theme_path(@theme))
        else 
            flash.now[:alert] = "Nous avons rencontré un problème. Veuillez vérifier le formulaire"
            render 
        end
    end

    
    def destroy
        set_theme
        @theme.destroy
        redirect_to themes_path
    end



    private 

    def theme_params
        params.require(:theme).permit(:description, :name)
    end


    def set_theme
        @theme = Theme.find(params[:id])
    end
end
