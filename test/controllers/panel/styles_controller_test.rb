require 'test_helper'

class Panel::StylesControllerTest < ActionController::TestCase
  setup do
    @panel_style = panel_styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:panel_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create panel_style" do
    assert_difference('Panel::Style.count') do
      post :create, panel_style: { a_color: @panel_style.a_color, a_hover_color: @panel_style.a_hover_color, footer_color: @panel_style.footer_color, footer_text_color: @panel_style.footer_text_color, menu_color: @panel_style.menu_color, menu_hover_color: @panel_style.menu_hover_color, nav_color: @panel_style.nav_color, nav_text_color: @panel_style.nav_text_color }
    end

    assert_redirected_to panel_style_path(assigns(:panel_style))
  end

  test "should show panel_style" do
    get :show, id: @panel_style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @panel_style
    assert_response :success
  end

  test "should update panel_style" do
    patch :update, id: @panel_style, panel_style: { a_color: @panel_style.a_color, a_hover_color: @panel_style.a_hover_color, footer_color: @panel_style.footer_color, footer_text_color: @panel_style.footer_text_color, menu_color: @panel_style.menu_color, menu_hover_color: @panel_style.menu_hover_color, nav_color: @panel_style.nav_color, nav_text_color: @panel_style.nav_text_color }
    assert_redirected_to panel_style_path(assigns(:panel_style))
  end

  test "should destroy panel_style" do
    assert_difference('Panel::Style.count', -1) do
      delete :destroy, id: @panel_style
    end

    assert_redirected_to panel_styles_path
  end
end
