require 'test_helper'

class PotentialMembersControllerTest < ActionController::TestCase
  setup do
    @potential_member = potential_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:potential_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create potential_member" do
    assert_difference('PotentialMember.count') do
      post :create, potential_member: { email: @potential_member.email, first_name: @potential_member.first_name, last_name: @potential_member.last_name, zip_code: @potential_member.zip_code }
    end

    assert_redirected_to potential_member_path(assigns(:potential_member))
  end

  test "should show potential_member" do
    get :show, id: @potential_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @potential_member
    assert_response :success
  end

  test "should update potential_member" do
    patch :update, id: @potential_member, potential_member: { email: @potential_member.email, first_name: @potential_member.first_name, last_name: @potential_member.last_name, zip_code: @potential_member.zip_code }
    assert_redirected_to potential_member_path(assigns(:potential_member))
  end

  test "should destroy potential_member" do
    assert_difference('PotentialMember.count', -1) do
      delete :destroy, id: @potential_member
    end

    assert_redirected_to potential_members_path
  end
end
