class ArtistsController < ApplicationController

    def create
      @artist = Artist.create(params.require(:artist).permit(:name, :bio))
      redirect_to artist_path(@artist)
    end
  
    def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
