require 'test_helper'

class Panel::ServicesControllerTest < ActionController::TestCase
  setup do
    @panel_service = panel_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:panel_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create panel_service" do
    assert_difference('Panel::Service.count') do
      post :create, panel_service: { description: @panel_service.description, image: @panel_service.image, title: @panel_service.title }
    end

    assert_redirected_to panel_service_path(assigns(:panel_service))
  end

  test "should show panel_service" do
    get :show, id: @panel_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @panel_service
    assert_response :success
  end

  test "should update panel_service" do
    patch :update, id: @panel_service, panel_service: { description: @panel_service.description, image: @panel_service.image, title: @panel_service.title }
    assert_redirected_to panel_service_path(assigns(:panel_service))
  end

  test "should destroy panel_service" do
    assert_difference('Panel::Service.count', -1) do
      delete :destroy, id: @panel_service
    end

    assert_redirected_to panel_services_path
  end
end
