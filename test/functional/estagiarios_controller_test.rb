require 'test_helper'

class EstagiariosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estagiarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estagiario" do
    assert_difference('Estagiario.count') do
      post :create, :estagiario => { }
    end

    assert_redirected_to estagiario_path(assigns(:estagiario))
  end

  test "should show estagiario" do
    get :show, :id => estagiarios(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => estagiarios(:one).to_param
    assert_response :success
  end

  test "should update estagiario" do
    put :update, :id => estagiarios(:one).to_param, :estagiario => { }
    assert_redirected_to estagiario_path(assigns(:estagiario))
  end

  test "should destroy estagiario" do
    assert_difference('Estagiario.count', -1) do
      delete :destroy, :id => estagiarios(:one).to_param
    end

    assert_redirected_to estagiarios_path
  end
end
