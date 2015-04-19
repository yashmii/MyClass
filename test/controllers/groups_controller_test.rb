require 'test_helper'

class GroupsControllerTest < ActionController::TestCase
  setup do
    @group = groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group" do
    assert_difference('Group.count') do
      post :create, group: { book_id: @group.book_id, days: @group.days, duration: @group.duration, group_name: @group.group_name, info: @group.info, language_id: @group.language_id, language_level_id: @group.language_level_id, office_id: @group.office_id, teacher_id: @group.teacher_id, time: @group.time }
    end

    assert_redirected_to group_path(assigns(:group))
  end

  test "should show group" do
    get :show, id: @group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group
    assert_response :success
  end

  test "should update group" do
    patch :update, id: @group, group: { book_id: @group.book_id, days: @group.days, duration: @group.duration, group_name: @group.group_name, info: @group.info, language_id: @group.language_id, language_level_id: @group.language_level_id, office_id: @group.office_id, teacher_id: @group.teacher_id, time: @group.time }
    assert_redirected_to group_path(assigns(:group))
  end

  test "should destroy group" do
    assert_difference('Group.count', -1) do
      delete :destroy, id: @group
    end

    assert_redirected_to groups_path
  end
end
