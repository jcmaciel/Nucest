require 'test_helper'

class BolsistasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bolsistas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bolsista" do
    assert_difference('Bolsista.count') do
      post :create, :bolsista => { }
    end

    assert_redirected_to bolsista_path(assigns(:bolsista))
  end

  test "should show bolsista" do
    get :show, :id => bolsistas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => bolsistas(:one).to_param
    assert_response :success
  end

  test "should update bolsista" do
    put :update, :id => bolsistas(:one).to_param, :bolsista => { }
    assert_redirected_to bolsista_path(assigns(:bolsista))
  end

  test "should destroy bolsista" do
    assert_difference('Bolsista.count', -1) do
      delete :destroy, :id => bolsistas(:one).to_param
    end

    assert_redirected_to bolsistas_path
  end
end
