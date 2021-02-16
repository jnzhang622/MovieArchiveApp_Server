class WatchedsController < ApplicationController
    def index
        @watcheds = Watched.all
        render json: @watcheds
    end
    def new
        @watched = Watched.new
        render json: watched
    end
    
    def create
        watched = Watched.create(watched_params)
        render json: watched
    end
    def destroy
        watched = Watched.find(params[:id])
        watched.destroy!
        render json: {}
    end

    private

    def watched_params
        params.require(:watched).permit(:Poster, :Title, :Type, :Year, :imdbID, :liked)
    end
end
