require 'test_helper'

class TaskControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get task_input_url
    assert_response :success
  end

  test "should get output" do
    get task_output_url, params: {n:'10'}
    assert_response :success
    assert_equal '10',assigns[:n]
  end

end
