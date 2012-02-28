require 'test_helper'

class LopsControllerTest < ActionController::TestCase
  setup do
    @lop = lops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lop" do
    assert_difference('Lop.count') do
      post :create, :lop => @lop.attributes
    end

    assert_redirected_to lop_path(assigns(:lop))
  end

  test "should show lop" do
    get :show, :id => @lop
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lop
    assert_response :success
  end

  test "should update lop" do
    put :update, :id => @lop, :lop => @lop.attributes
    assert_redirected_to lop_path(assigns(:lop))
  end

  test "should destroy lop" do
    assert_difference('Lop.count', -1) do
      delete :destroy, :id => @lop
    end

    assert_redirected_to lops_path
  end
end
