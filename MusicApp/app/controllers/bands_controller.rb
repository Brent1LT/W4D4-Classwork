class BandsController < ApplicationController

  def index 
    @bands = Band.all
    render :index 
  end 

  def new
    render :new
  end 

  def create
    @band = Band.new(band_params)
    if @band.save!
      redirect_to band_url(@band)
    else 
      redirect_to new_band_url
    end 
  end 

  def edit

  end 

  def update 

  end 

  def destroy

  end 

  def show
    @band = Band.find(params[:id])
    render :show
  end 

  private 

  def band_params
    params.require(:band).permit(:name)
  end 
end 