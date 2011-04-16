require 'test_helper'

class BirdListsControllerTest < ActionController::TestCase
  setup do
    @birdlist = birdlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bird_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create birdlist" do
    assert_difference('Birdlist.count') do
      post :create, :birdlist => @birdlist.attributes
    end

    assert_redirected_to birdlist_path(assigns(:birdlist))
  end

  test "should show birdlist" do
    get :show, :id => @birdlist.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @birdlist.to_param
    assert_response :success
  end

  test "should update birdlist" do
    put :update, :id => @birdlist.to_param, :birdlist => @birdlist.attributes
    assert_redirected_to birdlist_path(assigns(:birdlist))
  end

  test "should destroy birdlist" do
    assert_difference('Birdlist.count', -1) do
      delete :destroy, :id => @birdlist.to_param
    end

    assert_redirected_to birdlists_path
  end
end
