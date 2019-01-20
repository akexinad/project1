class FieldsController < ApplicationController

  def index
    @fields = Field.all.uniq(&:name)
  end

  def show
    @field = Field.find params[:id]
  end

  def new
    @field = Field.new
  end

  def create
    field = Field.create fields_params
    redirect_to field_path(field.id)
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  def fields_params
    params.require(:field).permit(:name)
  end
end
