class BacklistsController < ApplicationController
    def index
        @backlists = Backlist.all
        render json: @backlists
    end
    def new
        @backlist = Backlist.new
        render json: backlist
    end
    
    def create
        backlist = Backlist.create(backlist_params)
        render json: backlist
    end
    def destroy
        backlist = Backlist.find(params[:id])
        backlist.destroy!
        render json: {}
    end

    private

    def backlist_params
        params.require(:backlist).permit(:Poster, :Title, :Type, :Year, :imdbID)
    end
end
