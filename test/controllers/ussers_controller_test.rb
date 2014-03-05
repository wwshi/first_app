require 'test_helper'

class UssersControllerTest < ActionController::TestCase
  setup do
    @usser = ussers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ussers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usser" do
    assert_difference('Usser.count') do
      post :create, usser: { email: @usser.email, name: @usser.name }
    end

    assert_redirected_to usser_path(assigns(:usser))
  end

  test "should show usser" do
    get :show, id: @usser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usser
    assert_response :success
  end

  test "should update usser" do
    patch :update, id: @usser, usser: { email: @usser.email, name: @usser.name }
    assert_redirected_to usser_path(assigns(:usser))
  end

  test "should destroy usser" do
    assert_difference('Usser.count', -1) do
      delete :destroy, id: @usser
    end

    assert_redirected_to ussers_path
  end
end
