require 'test_helper'

class Panel::SlidesControllerTest < ActionController::TestCase
  setup do
    @panel_slide = panel_slides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:panel_slides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create panel_slide" do
    assert_difference('Panel::Slide.count') do
      post :create, panel_slide: { description: @panel_slide.description, image: @panel_slide.image, link: @panel_slide.link, title: @panel_slide.title }
    end

    assert_redirected_to panel_slide_path(assigns(:panel_slide))
  end

  test "should show panel_slide" do
    get :show, id: @panel_slide
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @panel_slide
    assert_response :success
  end

  test "should update panel_slide" do
    patch :update, id: @panel_slide, panel_slide: { description: @panel_slide.description, image: @panel_slide.image, link: @panel_slide.link, title: @panel_slide.title }
    assert_redirected_to panel_slide_path(assigns(:panel_slide))
  end

  test "should destroy panel_slide" do
    assert_difference('Panel::Slide.count', -1) do
      delete :destroy, id: @panel_slide
    end

    assert_redirected_to panel_slides_path
  end
end
