class CitiesController < ApplicationController

  def view
    @city_name = params[:city]
    @city_new = City.all
    render 'cities/view'
  end

  def new
    render 'cities/new'
  end

  def update
    @city = params[:city]
    render 'cities/update'
  end

  def create
    @city = params[:city]
    name = params[:name]
    landmark = params[:landmark]
    population = params[:pop]
    if @city
    city = City.new(
      name: @city,
      landmark: @landmark,
      population: @pop,
    )
    city.Save
    redirect_to '/view'
  end

  def updatepost
    @City = $cities[params[:name].to_sym]
      if(@City != nil)
      @City.update(landmark: params[:landmark] , population: params[:population])
      end
      @City.save
      redirect_to '/view'
      end
    end
  end
