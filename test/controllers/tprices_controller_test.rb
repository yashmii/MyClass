require 'test_helper'

class TpricesControllerTest < ActionController::TestCase
  setup do
    @tprice = tprices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tprices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tprice" do
    assert_difference('Tprice.count') do
      post :create, tprice: { active: @tprice.active, name: @tprice.name, tprice: @tprice.tprice }
    end

    assert_redirected_to tprice_path(assigns(:tprice))
  end

  test "should show tprice" do
    get :show, id: @tprice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tprice
    assert_response :success
  end

  test "should update tprice" do
    patch :update, id: @tprice, tprice: { active: @tprice.active, name: @tprice.name, tprice: @tprice.tprice }
    assert_redirected_to tprice_path(assigns(:tprice))
  end

  test "should destroy tprice" do
    assert_difference('Tprice.count', -1) do
      delete :destroy, id: @tprice
    end

    assert_redirected_to tprices_path
  end
end
