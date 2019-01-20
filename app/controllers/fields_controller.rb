class FieldsController < ApplicationController

  def index
    @fields = Field.order("name ASC").uniq(&:name)
  end

  def show
    @field = Field.find params[:id]
    @theories = @field.theories.order("name ASC")

  end

  def new
    @field = Field.new
  end

  def create
    field = Field.create fields_params
    redirect_to field_path(field.id)
  end

  def edit
    @field = Field.find params[:id]
  end

  def update
    field = Field.find params[:id]
    field.update fields_params
    redirect_to field
  end

  def destroy
    field = Field.find params[:id]
    field.destroy
    redirect_to fields_path
  end

  private
  def fields_params
    params.require(:field).permit(:name, :theory_id, :thinker_id)
  end
end
