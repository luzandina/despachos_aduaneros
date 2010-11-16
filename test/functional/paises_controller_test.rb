require 'test_helper'

class PaisesControllerTest < ActionController::TestCase
  setup do
    @paise = paises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paise" do
    assert_difference('Paise.count') do
      post :create, :paise => @paise.attributes
    end

    assert_redirected_to paise_path(assigns(:paise))
  end

  test "should show paise" do
    get :show, :id => @paise.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @paise.to_param
    assert_response :success
  end

  test "should update paise" do
    put :update, :id => @paise.to_param, :paise => @paise.attributes
    assert_redirected_to paise_path(assigns(:paise))
  end

  test "should destroy paise" do
    assert_difference('Paise.count', -1) do
      delete :destroy, :id => @paise.to_param
    end

    assert_redirected_to paises_path
  end
end
