class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :destroy, :update]
  def index
  	@properties = Property.all
  end

  def new
    @property = Property.new
    1.times { @property.railways.build }
  end

  def create
  	@property = Property.new(property_params)
  	if params[:back]
      render :new
    else
	    if @property.save
	      redirect_to properties_path, notice: "Property created!"
	    else
	      render :new
	    end
	end
  end

def update
	if @property.update(property_params)
			redirect_to properties_path, notice: "Property edited!"
	else
			render :edit
	end
end

  def show
  end

  def edit
  end

  def destroy
    @property.destroy
    redirect_to properties_path, notice:"Property deleted!"
  end


  private
  def property_params
    params.require(:property).permit(:property, :rent, :address, :building, :remarks, railways_attributes: [ :id, :railway, :station, :distance])
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
