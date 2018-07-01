require 'test_helper'

class TssksControllerTest < ActionController::TestCase
  setup do
    @tssk = tssks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tssks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tssk" do
    assert_difference('Tssk.count') do
      post :create, tssk: { detail: @tssk.detail, title: @tssk.title }
    end

    assert_redirected_to tssk_path(assigns(:tssk))
  end

  test "should show tssk" do
    get :show, id: @tssk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tssk
    assert_response :success
  end

  test "should update tssk" do
    patch :update, id: @tssk, tssk: { detail: @tssk.detail, title: @tssk.title }
    assert_redirected_to tssk_path(assigns(:tssk))
  end

  test "should destroy tssk" do
    assert_difference('Tssk.count', -1) do
      delete :destroy, id: @tssk
    end

    assert_redirected_to tssks_path
  end
end
