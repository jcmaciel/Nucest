require 'test_helper'

class SupervisorEstagiosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supervisor_estagios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supervisor_estagio" do
    assert_difference('SupervisorEstagio.count') do
      post :create, :supervisor_estagio => { }
    end

    assert_redirected_to supervisor_estagio_path(assigns(:supervisor_estagio))
  end

  test "should show supervisor_estagio" do
    get :show, :id => supervisor_estagios(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => supervisor_estagios(:one).to_param
    assert_response :success
  end

  test "should update supervisor_estagio" do
    put :update, :id => supervisor_estagios(:one).to_param, :supervisor_estagio => { }
    assert_redirected_to supervisor_estagio_path(assigns(:supervisor_estagio))
  end

  test "should destroy supervisor_estagio" do
    assert_difference('SupervisorEstagio.count', -1) do
      delete :destroy, :id => supervisor_estagios(:one).to_param
    end

    assert_redirected_to supervisor_estagios_path
  end
end
