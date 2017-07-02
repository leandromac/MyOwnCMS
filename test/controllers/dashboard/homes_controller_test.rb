require 'test_helper'

class Dashboard::HomesControllerTest < ActionController::TestCase
  setup do
    @dashboard_home = dashboard_homes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dashboard_homes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dashboard_home" do
    assert_difference('Dashboard::Home.count') do
      post :create, dashboard_home: { logo: @dashboard_home.logo }
    end

    assert_redirected_to dashboard_home_path(assigns(:dashboard_home))
  end

  test "should show dashboard_home" do
    get :show, id: @dashboard_home
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dashboard_home
    assert_response :success
  end

  test "should update dashboard_home" do
    patch :update, id: @dashboard_home, dashboard_home: { logo: @dashboard_home.logo }
    assert_redirected_to dashboard_home_path(assigns(:dashboard_home))
  end

  test "should destroy dashboard_home" do
    assert_difference('Dashboard::Home.count', -1) do
      delete :destroy, id: @dashboard_home
    end

    assert_redirected_to dashboard_homes_path
  end
end
