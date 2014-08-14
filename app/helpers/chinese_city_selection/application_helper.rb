module ChineseCitySelection
  module ApplicationHelper
    def chinese_province_list
      ChineseCities::Province.all
    end

    def chinese_city_list(province_name)
      if province_name.blank?
        province = ChineseCities::Province.find(1)
      else
        province = ChineseCities::Province.where province_name
      end
      province.cities rescue []
    end

    def chinese_region_list(province_name, city_name)
      if province_name.blank? or city_name.blank?
        province = ChineseCities::Province.find(1)
        @city = province.cities.first
      else
        province = ChineseCities::Province.where province_name
        @city = province.cities.select{|c| c.name == city_name }.first
      end
      @regions = @city.regions rescue []
    end

  end
end
