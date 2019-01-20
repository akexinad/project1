class TheoriesController < ApplicationController

  def index
    @theories = Theory.order("name ASC")
  end

  def show
    @theory = Theory.find params[:id]
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
