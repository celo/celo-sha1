require 'test_helper'

class Sha1sControllerTest < ActionController::TestCase
  setup do
    @sha1 = sha1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sha1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sha1" do
    assert_difference('Sha1.count') do
      post :create, sha1: { texto: @sha1.texto }
    end

    assert_redirected_to sha1_path(assigns(:sha1))
  end

  test "should show sha1" do
    get :show, id: @sha1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sha1
    assert_response :success
  end

  test "should update sha1" do
    put :update, id: @sha1, sha1: { texto: @sha1.texto }
    assert_redirected_to sha1_path(assigns(:sha1))
  end

  test "should destroy sha1" do
    assert_difference('Sha1.count', -1) do
      delete :destroy, id: @sha1
    end

    assert_redirected_to sha1s_path
  end
end
