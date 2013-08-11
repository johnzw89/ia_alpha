require 'test_helper'

class ComicTitlesControllerTest < ActionController::TestCase
  setup do
    @comic_title = comic_titles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comic_titles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comic_title" do
    assert_difference('ComicTitle.count') do
      post :create, comic_title: {  }
    end

    assert_redirected_to comic_title_path(assigns(:comic_title))
  end

  test "should show comic_title" do
    get :show, id: @comic_title
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comic_title
    assert_response :success
  end

  test "should update comic_title" do
    put :update, id: @comic_title, comic_title: {  }
    assert_redirected_to comic_title_path(assigns(:comic_title))
  end

  test "should destroy comic_title" do
    assert_difference('ComicTitle.count', -1) do
      delete :destroy, id: @comic_title
    end

    assert_redirected_to comic_titles_path
  end
end
