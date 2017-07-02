require 'test_helper'

class Panel::CustomsControllerTest < ActionController::TestCase
  setup do
    @panel_custom = panel_customs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:panel_customs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create panel_custom" do
    assert_difference('Panel::Custom.count') do
      post :create, panel_custom: { about: @panel_custom.about, address: @panel_custom.address, email: @panel_custom.email, facebook: @panel_custom.facebook, instagram: @panel_custom.instagram, linkedin: @panel_custom.linkedin, logo: @panel_custom.logo, name: @panel_custom.name, phone: @panel_custom.phone, twitter: @panel_custom.twitter, youtube: @panel_custom.youtube }
    end

    assert_redirected_to panel_custom_path(assigns(:panel_custom))
  end

  test "should show panel_custom" do
    get :show, id: @panel_custom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @panel_custom
    assert_response :success
  end

  test "should update panel_custom" do
    patch :update, id: @panel_custom, panel_custom: { about: @panel_custom.about, address: @panel_custom.address, email: @panel_custom.email, facebook: @panel_custom.facebook, instagram: @panel_custom.instagram, linkedin: @panel_custom.linkedin, logo: @panel_custom.logo, name: @panel_custom.name, phone: @panel_custom.phone, twitter: @panel_custom.twitter, youtube: @panel_custom.youtube }
    assert_redirected_to panel_custom_path(assigns(:panel_custom))
  end

  test "should destroy panel_custom" do
    assert_difference('Panel::Custom.count', -1) do
      delete :destroy, id: @panel_custom
    end

    assert_redirected_to panel_customs_path
  end
end
