class SightingsController < ApplicationController
  def index
    @sightings = Sighting.all
    # if 'All'
    #   Sighting.all
    # elsif 'Desert'
    #   @sightings = :search("Desert")
    # elsif 'Arctic'
    #   @sightings = :search("Arctic")
    # elsif 'Grassy Area'
    #   @sightings = :search("Grassy Area")
    # elsif 'Mountain'
    #   @sightings = :search("Mountain")
    # elsif 'Water'
    #   @sightings = :search("Water")
    # elsif 'South'
    #   @sightings = :search("South")
    # end

  end

  def new
    @animal = Animal.find(params[:animal_id])
    @sighting = @animal.sightings.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @sighting = @animal.sightings.new(sighting_params)
    if @sighting.save
      flash[:notice] = "Sighting successfully added!"
      redirect_to animal_path(@sighting.animal)
    else
      render :new
    end
  end

  def edit
    @animal = Animal.find(params[:animal_id])
    @sighting = Sighting.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:animal_id])
    @sighting = Sighting.find(params[:id])
    if @sighting.update(sighting_params)
      flash[:notice] = "Sighting successfully updated!"
      redirect_to animal_path(@sighting.animal)
    else
      render :edit
    end
  end

  def destroy
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    redirect_to animal_path(@sighting.animal)
  end

private
  def sighting_params
    params.require(:sighting).permit(:description, :date, :lat, :long, :region)
  end

end
