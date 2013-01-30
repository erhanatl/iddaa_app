require 'test_helper'

class YorumsControllerTest < ActionController::TestCase
  setup do
    @yorum = yorums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yorums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yorum" do
    assert_difference('Yorum.count') do
      post :create, yorum: { title: @yorum.title, user_id: @yorum.user_id, yazi: @yorum.yazi }
    end

    assert_redirected_to yorum_path(assigns(:yorum))
  end

  test "should show yorum" do
    get :show, id: @yorum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yorum
    assert_response :success
  end

  test "should update yorum" do
    put :update, id: @yorum, yorum: { title: @yorum.title, user_id: @yorum.user_id, yazi: @yorum.yazi }
    assert_redirected_to yorum_path(assigns(:yorum))
  end

  test "should destroy yorum" do
    assert_difference('Yorum.count', -1) do
      delete :destroy, id: @yorum
    end

    assert_redirected_to yorums_path
  end
end
