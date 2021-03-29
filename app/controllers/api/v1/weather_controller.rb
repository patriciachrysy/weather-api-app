class Api::V1::WeatherController < ActionController::API
    API_KEY = "1dc18bf7d91aa570304ed5ac156dcf0e"

    #GET /weather/:ville
    def get_weather
      render json: { error: 'Please provide a city name.' }, status: 400 unless params[:city]
      @response = retrieve_weather_datas(params[:city])
      render json: @response.body, status: @response.status
    end

    private

    def retrieve_weather_datas(city)
        Faraday.get 'https://api.openweathermap.org/data/2.5/weather?q=' + city + '&appid=' + API_KEY
    end

end