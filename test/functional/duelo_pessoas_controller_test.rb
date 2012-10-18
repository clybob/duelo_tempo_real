require 'test_helper'

class DueloPessoasControllerTest < ActionController::TestCase
  setup do
    @duelo_pessoa = duelo_pessoas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:duelo_pessoas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create duelo_pessoa" do
    assert_difference('DueloPessoa.count') do
      post :create, duelo_pessoa: { votos: @duelo_pessoa.votos }
    end

    assert_redirected_to duelo_pessoa_path(assigns(:duelo_pessoa))
  end

  test "should show duelo_pessoa" do
    get :show, id: @duelo_pessoa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @duelo_pessoa
    assert_response :success
  end

  test "should update duelo_pessoa" do
    put :update, id: @duelo_pessoa, duelo_pessoa: { votos: @duelo_pessoa.votos }
    assert_redirected_to duelo_pessoa_path(assigns(:duelo_pessoa))
  end

  test "should destroy duelo_pessoa" do
    assert_difference('DueloPessoa.count', -1) do
      delete :destroy, id: @duelo_pessoa
    end

    assert_redirected_to duelo_pessoas_path
  end
end
