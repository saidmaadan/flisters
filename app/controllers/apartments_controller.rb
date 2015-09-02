class ApartmentsController < ApplicationController
  def index
  end

  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.new(apartment_params)
    if @apartment.save
      redirect_to apartments_path, notice: "Apartment created successfully"
    else
      flash[:danger] = "Apartment listing could not be created"
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
