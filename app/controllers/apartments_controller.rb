class ApartmentsController < ApplicationController
  def index
  end
  
  def new
    @apartment = Apartment.new
  end
  
  def create
    @apartment = Apartment.new(apartment_params)
    if @apartment.save
      redirect_to @apartment, notice: "Apartment created successfully"
    else
      render :new
    end
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  private
  def apartment_params
    params.required(:apartment).permit(:title, :description)
  end
end
