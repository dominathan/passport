require 'test_helper'

class PotentialPartnersControllerTest < ActionController::TestCase
  setup do
    @potential_partner = potential_partners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:potential_partners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create potential_partner" do
    assert_difference('PotentialPartner.count') do
      post :create, potential_partner: { contact_number: @potential_partner.contact_number, email: @potential_partner.email, how_did_you_hear_partner: @potential_partner.how_did_you_hear_partner, person_to_contact: @potential_partner.person_to_contact, studio_name: @potential_partner.studio_name, web_address: @potential_partner.web_address }
    end

    assert_redirected_to potential_partner_path(assigns(:potential_partner))
  end

  test "should show potential_partner" do
    get :show, id: @potential_partner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @potential_partner
    assert_response :success
  end

  test "should update potential_partner" do
    patch :update, id: @potential_partner, potential_partner: { contact_number: @potential_partner.contact_number, email: @potential_partner.email, how_did_you_hear_partner: @potential_partner.how_did_you_hear_partner, person_to_contact: @potential_partner.person_to_contact, studio_name: @potential_partner.studio_name, web_address: @potential_partner.web_address }
    assert_redirected_to potential_partner_path(assigns(:potential_partner))
  end

  test "should destroy potential_partner" do
    assert_difference('PotentialPartner.count', -1) do
      delete :destroy, id: @potential_partner
    end

    assert_redirected_to potential_partners_path
  end
end
