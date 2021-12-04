require 'test_helper'

class AuthersControllerTest < ActionController::TestCase
  setup do
    @auther = authers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:authers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auther" do
    assert_difference('Auther.count') do
      post :create, auther: {  }
    end

    assert_redirected_to auther_path(assigns(:auther))
  end

  test "should show auther" do
    get :show, id: @auther
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auther
    assert_response :success
  end

  test "should update auther" do
    patch :update, id: @auther, auther: {  }
    assert_redirected_to auther_path(assigns(:auther))
  end

  test "should destroy auther" do
    assert_difference('Auther.count', -1) do
      delete :destroy, id: @auther
    end

    assert_redirected_to authers_path
  end
end
