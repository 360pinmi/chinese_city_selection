require_dependency "chinese_city_selection/application_controller"

module ChineseCitySelection
  class DataController < ApplicationController
    def city_index
      @province = ChineseCities::Province.where params[:province_name]
      @cities = @province.cities rescue []
    end

    def province_index
      @provincies = ChineseCities::Province.all
    end

    def region_index
      province = ChineseCities::Province.where params[:province_name]
      @city = province.cities.select{|c| c.name == params[:city_name] }.first
      @regions = @city.regions
    end
  end
end
