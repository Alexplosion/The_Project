class PlaylistsController < ApplicationController
    before_action :set_playlist, only: [:show, :edit, :update, :destroy]

    def index 
        @playlists = Playlist.all
    end 

    def new
        @playlist = Playlist.new
    end

    def create 
        @playlist = Playlist.create(playlist_params)
        if @playlist.save
             flash[:success] = "Your new playlist has been created !"
        redirect_to @playlist
        else 
             flash.now[:alert] = "Your new playlist couldn't be created!  Please check the form."
            render 'new'
        end
    end

    def show
        set_playlist
    end

    def edit 
        set_playlist
    end 

    def update
        set_playlist
        if
            @playlist.update(playlist_params)
            flash[:success] = "Votre playlist a bien été modifié !"
        redirect_to(playlist_path(@playlist))
        else 
            flash.now[:alert] = "Nous avons rencontré un problème. Veuillez vérifier le formulaire"
            render 
        end
    end

    
    def destroy
        set_playlist
        @playlist.destroy
        redirect_to playlists_path
    end



    private 

    def playlist_params
        params.require(:playlist).permit(:description, :name,:category_id,:theme_id)
    end


    def set_playlist
        @playlist = Playlist.find(params[:id])
    end

end
