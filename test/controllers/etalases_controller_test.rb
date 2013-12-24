require 'test_helper'

class EtalasesControllerTest < ActionController::TestCase
  setup do
    @etalase = etalases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:etalases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create etalase" do
    assert_difference('Etalase.count') do
      post :create, etalase: { description: @etalase.description, photo: @etalase.photo, price: @etalase.price, title: @etalase.title }
    end

    assert_redirected_to etalase_path(assigns(:etalase))
  end

  test "should show etalase" do
    get :show, id: @etalase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @etalase
    assert_response :success
  end

  test "should update etalase" do
    patch :update, id: @etalase, etalase: { description: @etalase.description, photo: @etalase.photo, price: @etalase.price, title: @etalase.title }
    assert_redirected_to etalase_path(assigns(:etalase))
  end

  test "should destroy etalase" do
    assert_difference('Etalase.count', -1) do
      delete :destroy, id: @etalase
    end

    assert_redirected_to etalases_path
  end
end
