class ThinkersController < ApplicationController
  def index
    @thinkers = Thinker.order("name ASC")
  end

  def show
    require 'wikipedia'
    @thinker = Thinker.find params[:id]
    @theories = @thinker.theories.order("name ASC")
    @fields = @thinker.fields.order("name ASC").uniq(&:name)
    wiki_api = Wikipedia.find( "#{@thinker.name}" )
    @summary = wiki_api.summary
    @info = wiki_api.fullurl
  end

  def new
    @thinker = Thinker.new
  end

  def create
    thinker = Thinker.create thinker_params
    redirect_to thinker_path(thinker.id)
  end

  def add_to_favourites
    favourite = Favourite.create
    thinker = Thinker.find params[:id]
    thinker.favourites << favourite
    @current_user.favourites << favourite
    redirect_to thinker
  end

  def edit
    @thinker = Thinker.find params[:id]
  end

  def update
    thinker = Thinker.find params[:id]
    thinker.update thinker_params
    redirect_to thinker_path(thinker.id)
  end

  def destroy
    thinker = Thinker.find params[:id]
    thinker.destroy
    redirect_to thinkers_path
  end

  private
  def thinker_params
    params.require(:thinker).permit(:name, :birth, :death, :nationality, :era, :image, :quote, :field_id, :theory_id)
  end

end
