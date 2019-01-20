class ThinkersController < ApplicationController
  def index
    @thinkers = Thinker.order("name ASC")
  end

  def show
    @thinker = Thinker.find params[:id]
    @theories = @thinker.theories.order("name ASC")
    @fields = @thinker.fields.order("name ASC").uniq(&:name)
  end

  def new
    @thinker = Thinker.new
  end

  def create
    thinker = Thinker.create thinker_params
    redirect_to thinker_path(thinker.id)
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
    params.require(:thinker).permit(:name, :birth, :death, :nationality, :era, :image, :quote, :field_id)
  end

end
