require 'test_helper'

class ProcedureListsControllerTest < ActionController::TestCase
  setup do
    @procedure_list = procedure_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:procedure_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create procedure_list" do
    assert_difference('ProcedureList.count') do
      post :create, procedure_list: { location: @procedure_list.location, procedure_id: @procedure_list.procedure_id }
    end

    assert_redirected_to procedure_list_path(assigns(:procedure_list))
  end

  test "should show procedure_list" do
    get :show, id: @procedure_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @procedure_list
    assert_response :success
  end

  test "should update procedure_list" do
    put :update, id: @procedure_list, procedure_list: { location: @procedure_list.location, procedure_id: @procedure_list.procedure_id }
    assert_redirected_to procedure_list_path(assigns(:procedure_list))
  end

  test "should destroy procedure_list" do
    assert_difference('ProcedureList.count', -1) do
      delete :destroy, id: @procedure_list
    end

    assert_redirected_to procedure_lists_path
  end
end
