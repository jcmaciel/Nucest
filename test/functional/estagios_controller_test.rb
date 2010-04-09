require 'test_helper'

class EstagiosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estagios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estagio" do
    assert_difference('Estagio.count') do
      post :create, :estagio => { }
    end

    assert_redirected_to estagio_path(assigns(:estagio))
  end

  test "should show estagio" do
    get :show, :id => estagios(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => estagios(:one).to_param
    assert_response :success
  end

  test "should update estagio" do
    put :update, :id => estagios(:one).to_param, :estagio => { }
    assert_redirected_to estagio_path(assigns(:estagio))
  end

  test "should destroy estagio" do
    assert_difference('Estagio.count', -1) do
      delete :destroy, :id => estagios(:one).to_param
    end

    assert_redirected_to estagios_path
  end
end
