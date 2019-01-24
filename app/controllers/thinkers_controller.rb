class ThinkersController < ApplicationController
  def index
    if params[:query]
      @thinkers = Thinker.text_search(params[:query])
    else
      @thinkers = Thinker.order("name ASC")
    end
  end

  def show
    require 'wikipedia'
    @thinker = Thinker.find params[:id]
    @theories = @thinker.theories.order("name ASC")
    @fields = @thinker.fields.order("name ASC").uniq(&:name)
    wiki_api = Wikipedia.find( "#{@thinker.name}" )
    @summary = wiki_api.summary
    # @summary = wiki_api.text
    @info = wiki_api.fullurl
    url = "https://www.googleapis.com/books/v1/volumes?q=author:#{ @thinker.name }"
    info = HTTParty.get url
    @items = info["items"]
  end

  def new
    @thinker = Thinker.new
  end

  def create
    thinker = Thinker.create thinker_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload params[:file]
      thinker.image = req["public_id"]
      thinker.save
    end
    redirect_to thinker_path(thinker.id)
  end

  def edit
    @thinker = Thinker.find params[:id]
  end

  def update
    thinker = Thinker.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload params[:file]
      thinker.image = req["public_id"]
    end
    thinker.update thinker_params
    redirect_to thinker_path(thinker.id)
  end

  def destroy
    thinker = Thinker.find params[:id]
    thinker.destroy
    redirect_to thinkers_path
  end

  def add_to_favourites
    favourite = Favourite.create
    thinker = Thinker.find params[:id]
    thinker.favourites << favourite
    @current_user.favourites << favourite
    redirect_to thinker
  end

  def destroy_favourite
    # raise "hell"
    favourite = Favourite.find params[:fav_id]
    favourite.destroy
    redirect_to @current_user
  end

  private
  def thinker_params
    params.require(:thinker).permit(:name, :birth, :death, :nationality, :era, :image, :quote, :field_id, :theory_id)
  end

end
