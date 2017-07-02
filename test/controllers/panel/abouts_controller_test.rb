require 'test_helper'

class Panel::AboutsControllerTest < ActionController::TestCase
  setup do
    @panel_about = panel_abouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:panel_abouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create panel_about" do
    assert_difference('Panel::About.count') do
      post :create, panel_about: { about: @panel_about.about, blockquote: @panel_about.blockquote, image: @panel_about.image, title: @panel_about.title }
    end

    assert_redirected_to panel_about_path(assigns(:panel_about))
  end

  test "should show panel_about" do
    get :show, id: @panel_about
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @panel_about
    assert_response :success
  end

  test "should update panel_about" do
    patch :update, id: @panel_about, panel_about: { about: @panel_about.about, blockquote: @panel_about.blockquote, image: @panel_about.image, title: @panel_about.title }
    assert_redirected_to panel_about_path(assigns(:panel_about))
  end

  test "should destroy panel_about" do
    assert_difference('Panel::About.count', -1) do
      delete :destroy, id: @panel_about
    end

    assert_redirected_to panel_abouts_path
  end
end
