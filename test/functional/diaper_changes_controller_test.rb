require 'test_helper'

class DiaperChangesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diaper_changes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diaper_change" do
    assert_difference('DiaperChange.count') do
      post :create, :diaper_change => { }
    end

    assert_redirected_to diaper_change_path(assigns(:diaper_change))
  end

  test "should show diaper_change" do
    get :show, :id => diaper_changes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => diaper_changes(:one).to_param
    assert_response :success
  end

  test "should update diaper_change" do
    put :update, :id => diaper_changes(:one).to_param, :diaper_change => { }
    assert_redirected_to diaper_change_path(assigns(:diaper_change))
  end

  test "should destroy diaper_change" do
    assert_difference('DiaperChange.count', -1) do
      delete :destroy, :id => diaper_changes(:one).to_param
    end

    assert_redirected_to diaper_changes_path
  end
end
