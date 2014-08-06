ChineseCitySelection::Engine.routes.draw do
  get 'city_index', to: 'data#city_index'
  get 'province_index', to: 'data#province_index'
  get 'region_index', to: 'data#region_index'
end
