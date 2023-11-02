class PlanetsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    if params[:search] && params[:search] != ""
      @planets = Planet.where('name ILIKE ? OR details ILIKE ?', "%#{params[:search]}%", "%#{params[:search]}%")
    else
      @planets = Planet.all
    end
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    if @planet.save
      redirect_to planet_path(@planet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def update
    @planet = Planet.find(params[:id])
    if @planet.update(planet_params)
      redirect_to planet_path(@planet)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @planet = Planet.find(params[:id])
    @planet.destroy
    redirect_to planets_path, status: :see_other
  end

  def create_booking
  end

  private

  def planet_params
    params.require(:planet).permit(%i[name details price distance])
  end
end
