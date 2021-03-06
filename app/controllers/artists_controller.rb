class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]
  
  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artists = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if artist.save
      redirect_to artists_path
    else
      render :new
    end
  end

  def edit
  end

  def update
   if @artist.update(artist_params) 
    redirect_to artist_path
   else
    render :edit
   end
  end
  
  def destroy
    @artist.destroy
    redirect_to artists_path
  end

  private
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  
  def set_artist
    @artist = artist.find(params[:id])
  end

  def artist_params
    params.require(:levi_list, :song, :avatar)
  end
end
