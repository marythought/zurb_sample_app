require "test_helper"

class TestsControllerTest < ActionController::TestCase
  def test
    @test ||= tests :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:tests)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("Test.count") do
      post :create, test: {  }
    end

    assert_redirected_to test_path(assigns(:test))
  end

  def test_show
    get :show, id: test
    assert_response :success
  end

  def test_edit
    get :edit, id: test
    assert_response :success
  end

  def test_update
    put :update, id: test, test: {  }
    assert_redirected_to test_path(assigns(:test))
  end

  def test_destroy
    assert_difference("Test.count", -1) do
      delete :destroy, id: test
    end

    assert_redirected_to tests_path
  end
end
