require 'test_helper'

class RvmodelsControllerTest < ActionController::TestCase
  setup do
    @rvmodel = rvmodels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rvmodels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rvmodel" do
    assert_difference('Rvmodel.count') do
      post :create, rvmodel: { modelname: @rvmodel.modelname }
    end

    assert_redirected_to rvmodel_path(assigns(:rvmodel))
  end

  test "should show rvmodel" do
    get :show, id: @rvmodel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rvmodel
    assert_response :success
  end

  test "should update rvmodel" do
    patch :update, id: @rvmodel, rvmodel: { modelname: @rvmodel.modelname }
    assert_redirected_to rvmodel_path(assigns(:rvmodel))
  end

  test "should destroy rvmodel" do
    assert_difference('Rvmodel.count', -1) do
      delete :destroy, id: @rvmodel
    end

    assert_redirected_to rvmodels_path
  end
end
