require_relative "../services/weather_service"


class MainController < ApplicationController

  def index
	@w = { name: params[:city], temperature: 70, description: "cloudy" }
	if @w
    # Bonus: Converting Kelvin to Fahrenheit
		@temperature = (9 / 5) * (@w[:temperature] - 273) + 32
		# Create a new city
		city = City.new(
			name: params[:city],
			landmark: params[:landmark],
      population: params[:population]
		)
		# Save the city so that it's in City.all
		city.save
	end
end
end
