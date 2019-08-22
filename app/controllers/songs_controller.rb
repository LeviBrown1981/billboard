class SongsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private
    def song_params
      params.require(:song).permit(:title, :artist_name [])
    end
  end
end
