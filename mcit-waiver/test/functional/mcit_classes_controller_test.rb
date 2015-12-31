require 'test_helper'

class McitClassesControllerTest < ActionController::TestCase
  setup do
    @mcit_class = mcit_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mcit_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mcit_class" do
    assert_difference('McitClass.count') do
      post :create, mcit_class: { waiver_class: @mcit_class.waiver_class }
    end

    assert_redirected_to mcit_class_path(assigns(:mcit_class))
  end

  test "should show mcit_class" do
    get :show, id: @mcit_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mcit_class
    assert_response :success
  end

  test "should update mcit_class" do
    put :update, id: @mcit_class, mcit_class: { waiver_class: @mcit_class.waiver_class }
    assert_redirected_to mcit_class_path(assigns(:mcit_class))
  end

  test "should destroy mcit_class" do
    assert_difference('McitClass.count', -1) do
      delete :destroy, id: @mcit_class
    end

    assert_redirected_to mcit_classes_path
  end
end
