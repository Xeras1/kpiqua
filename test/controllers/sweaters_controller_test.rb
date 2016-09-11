require 'test_helper'

class SweatersControllerTest < ActionController::TestCase
  setup do
    @sweater = sweaters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sweaters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sweater" do
    assert_difference('Sweater.count') do
      post :create, sweater: { base_id: @sweater.base_id, cost: @sweater.cost, pocket_id: @sweater.pocket_id, price: @sweater.price }
    end

    assert_redirected_to sweater_path(assigns(:sweater))
  end

  test "should show sweater" do
    get :show, id: @sweater
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sweater
    assert_response :success
  end

  test "should update sweater" do
    patch :update, id: @sweater, sweater: { base_id: @sweater.base_id, cost: @sweater.cost, pocket_id: @sweater.pocket_id, price: @sweater.price }
    assert_redirected_to sweater_path(assigns(:sweater))
  end

  test "should destroy sweater" do
    assert_difference('Sweater.count', -1) do
      delete :destroy, id: @sweater
    end

    assert_redirected_to sweaters_path
  end
end
