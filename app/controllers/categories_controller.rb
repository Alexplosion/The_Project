class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit, :update, :destroy]

    def index 
        @categories = Category.all
    end 

    def new
        @category = Category.new
    end

    def create 
        @category = Category.create(category_params)
        if @category.save
             flash[:success] = "Your new category has been created !"
        redirect_to @category
        else 
             flash.now[:alert] = "Your new category couldn't be created!  Please check the form."
            render 'new'
        end
    end

    def show
        set_category
    end

    def edit 
        set_category
    end 

    def update
        set_category
        if
            @category.update(category_params)
            flash[:success] = "Votre category a bien été modifié !"
        redirect_to(category_path(@category))
        else 
            flash.now[:alert] = "Nous avons rencontré un problème. Veuillez vérifier le formulaire"
            render 
        end
    end

    
    def destroy
        set_category
        @category.destroy
        redirect_to categorys_path
    end



    private 

    def category_params
        params.require(:category).permit(:description, :name)
    end


    def set_category
        @category = Category.find(params[:id])
    end

end
