require 'test_helper'

class ComicPagesControllerTest < ActionController::TestCase
  setup do
    @comic_page = comic_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comic_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comic_page" do
    assert_difference('ComicPage.count') do
      post :create, comic_page: {  }
    end

    assert_redirected_to comic_page_path(assigns(:comic_page))
  end

  test "should show comic_page" do
    get :show, id: @comic_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comic_page
    assert_response :success
  end

  test "should update comic_page" do
    put :update, id: @comic_page, comic_page: {  }
    assert_redirected_to comic_page_path(assigns(:comic_page))
  end

  test "should destroy comic_page" do
    assert_difference('ComicPage.count', -1) do
      delete :destroy, id: @comic_page
    end

    assert_redirected_to comic_pages_path
  end
end
