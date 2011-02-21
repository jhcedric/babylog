require 'test_helper'

class NapsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:naps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nap" do
    assert_difference('Nap.count') do
      post :create, :nap => { }
    end

    assert_redirected_to nap_path(assigns(:nap))
  end

  test "should show nap" do
    get :show, :id => naps(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => naps(:one).to_param
    assert_response :success
  end

  test "should update nap" do
    put :update, :id => naps(:one).to_param, :nap => { }
    assert_redirected_to nap_path(assigns(:nap))
  end

  test "should destroy nap" do
    assert_difference('Nap.count', -1) do
      delete :destroy, :id => naps(:one).to_param
    end

    assert_redirected_to naps_path
  end
end
