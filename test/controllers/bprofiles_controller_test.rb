require 'test_helper'

class BprofilesControllerTest < ActionController::TestCase
  setup do
    @bprofile = bprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bprofile" do
    assert_difference('Bprofile.count') do
      post :create, bprofile: { copmpany_type: @bprofile.copmpany_type, industry: @bprofile.industry, name: @bprofile.name, number_of_employes: @bprofile.number_of_employes, summary: @bprofile.summary }
    end

    assert_redirected_to bprofile_path(assigns(:bprofile))
  end

  test "should show bprofile" do
    get :show, id: @bprofile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bprofile
    assert_response :success
  end

  test "should update bprofile" do
    patch :update, id: @bprofile, bprofile: { copmpany_type: @bprofile.copmpany_type, industry: @bprofile.industry, name: @bprofile.name, number_of_employes: @bprofile.number_of_employes, summary: @bprofile.summary }
    assert_redirected_to bprofile_path(assigns(:bprofile))
  end

  test "should destroy bprofile" do
    assert_difference('Bprofile.count', -1) do
      delete :destroy, id: @bprofile
    end

    assert_redirected_to bprofiles_path
  end
end
