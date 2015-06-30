require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get hangman" do
    get :hangman
    assert_response :success
  end

  test "should get tictactoe" do
    get :tictactoe
    assert_response :success
  end

end
