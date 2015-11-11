require 'test_helper'

class CrmsControllerTest < ActionController::TestCase
  setup do
    @crm = crms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crm" do
    assert_difference('Crm.count') do
      post :create, crm: { client_id: @crm.client_id, info: @crm.info, teacher_id: @crm.teacher_id }
    end

    assert_redirected_to crm_path(assigns(:crm))
  end

  test "should show crm" do
    get :show, id: @crm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crm
    assert_response :success
  end

  test "should update crm" do
    patch :update, id: @crm, crm: { client_id: @crm.client_id, info: @crm.info, teacher_id: @crm.teacher_id }
    assert_redirected_to crm_path(assigns(:crm))
  end

  test "should destroy crm" do
    assert_difference('Crm.count', -1) do
      delete :destroy, id: @crm
    end

    assert_redirected_to crms_path
  end
end
