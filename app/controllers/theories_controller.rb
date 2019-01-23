class TheoriesController < ApplicationController

  def index
    if params[:query]
      @theories = Theory.text_search(params[:query])
    else
      @theories = Theory.order("name ASC")
    end
  end

  def show
    require 'wikipedia'
    @theory = Theory.find params[:id]
    wiki_api = Wikipedia.find( "#{@theory.name.downcase}" )
    @summary = wiki_api.text
    # @summary = wiki_api.content
    @info = wiki_api.fullurl
  end

  def new
    @theory = Theory.new
  end

  def create
    theory = Theory.create theory_params
    redirect_to theory_path(theory.id)
  end

  def edit
    @theory = Theory.find params[:id]
  end

  def update
    theory = Theory.find params[:id]
    theory.update theory_params
    redirect_to theory_path(theory.id)
  end

  def destroy
    theory = Theory.find params[:id]
    theory.destroy
    redirect_to theories_path
  end

  private
  def theory_params
    params.require(:theory).permit(:name, :thinker_id)
  end

end
