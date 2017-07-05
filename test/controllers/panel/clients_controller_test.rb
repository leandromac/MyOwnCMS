require 'test_helper'

class Panel::ClientsControllerTest < ActionController::TestCase
  setup do
    @panel_client = panel_clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:panel_clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create panel_client" do
    assert_difference('Panel::Client.count') do
      post :create, panel_client: { image: @panel_client.image, link: @panel_client.link }
    end

    assert_redirected_to panel_client_path(assigns(:panel_client))
  end

  test "should show panel_client" do
    get :show, id: @panel_client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @panel_client
    assert_response :success
  end

  test "should update panel_client" do
    patch :update, id: @panel_client, panel_client: { image: @panel_client.image, link: @panel_client.link }
    assert_redirected_to panel_client_path(assigns(:panel_client))
  end

  test "should destroy panel_client" do
    assert_difference('Panel::Client.count', -1) do
      delete :destroy, id: @panel_client
    end

    assert_redirected_to panel_clients_path
  end
end
