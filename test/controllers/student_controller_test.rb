require 'test_helper'

class StudentControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get courses" do
    get :courses
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get degree" do
    get :degree
    assert_response :success
  end

end
