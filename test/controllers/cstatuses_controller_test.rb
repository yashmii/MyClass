require 'test_helper'

class CstatusesControllerTest < ActionController::TestCase
  setup do
    @cstatus = cstatuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cstatuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cstatus" do
    assert_difference('Cstatus.count') do
      post :create, cstatus: { cstatus: @cstatus.cstatus }
    end

    assert_redirected_to cstatus_path(assigns(:cstatus))
  end

  test "should show cstatus" do
    get :show, id: @cstatus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cstatus
    assert_response :success
  end

  test "should update cstatus" do
    patch :update, id: @cstatus, cstatus: { cstatus: @cstatus.cstatus }
    assert_redirected_to cstatus_path(assigns(:cstatus))
  end

  test "should destroy cstatus" do
    assert_difference('Cstatus.count', -1) do
      delete :destroy, id: @cstatus
    end

    assert_redirected_to cstatuses_path
  end
end
