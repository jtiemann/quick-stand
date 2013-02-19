require 'test_helper'

class QuickStandsControllerTest < ActionController::TestCase
  setup do
    @quick_stand = quick_stands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quick_stands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quick_stand" do
    assert_difference('QuickStand.count') do
      post :create, quick_stand: { blockers: @quick_stand.blockers, develop: @quick_stand.develop, did_yesterday: @quick_stand.did_yesterday, do_today: @quick_stand.do_today, email: @quick_stand.email, notes: @quick_stand.notes, rating: @quick_stand.rating }
    end

    assert_redirected_to quick_stand_path(assigns(:quick_stand))
  end

  test "should show quick_stand" do
    get :show, id: @quick_stand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quick_stand
    assert_response :success
  end

  test "should update quick_stand" do
    put :update, id: @quick_stand, quick_stand: { blockers: @quick_stand.blockers, develop: @quick_stand.develop, did_yesterday: @quick_stand.did_yesterday, do_today: @quick_stand.do_today, email: @quick_stand.email, notes: @quick_stand.notes, rating: @quick_stand.rating }
    assert_redirected_to quick_stand_path(assigns(:quick_stand))
  end

  test "should destroy quick_stand" do
    assert_difference('QuickStand.count', -1) do
      delete :destroy, id: @quick_stand
    end

    assert_redirected_to quick_stands_path
  end
end
