require 'test_helper'

module ChineseCitySelection
  class ChineseCitiesControllerTest < ActionController::TestCase
    test "should get city_index" do
      get :city_index
      assert_response :success
    end

    test "should get province_index" do
      get :province_index
      assert_response :success
    end

    test "should get region_index" do
      get :region_index
      assert_response :success
    end

  end
end
