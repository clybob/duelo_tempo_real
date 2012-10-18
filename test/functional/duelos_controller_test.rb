require 'test_helper'

class DuelosControllerTest < ActionController::TestCase
  setup do
    @duelo = duelos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:duelos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create duelo" do
    assert_difference('Duelo.count') do
      post :create, duelo: { data_fim: @duelo.data_fim, data_inicio: @duelo.data_inicio, pessoa: @duelo.pessoa }
    end

    assert_redirected_to duelo_path(assigns(:duelo))
  end

  test "should show duelo" do
    get :show, id: @duelo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @duelo
    assert_response :success
  end

  test "should update duelo" do
    put :update, id: @duelo, duelo: { data_fim: @duelo.data_fim, data_inicio: @duelo.data_inicio, pessoa: @duelo.pessoa }
    assert_redirected_to duelo_path(assigns(:duelo))
  end

  test "should destroy duelo" do
    assert_difference('Duelo.count', -1) do
      delete :destroy, id: @duelo
    end

    assert_redirected_to duelos_path
  end
end
