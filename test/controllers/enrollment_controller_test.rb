require 'test_helper'

class EnrollmentControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enrollment = enrollments(:one)
    @request = requests(:one)
  end

  test "should get index" do
    get enrollments_url
    assert_response :success
  end

  # test "should create enrollment" do
  #     post enrollments_url, params: { enrollment:
  #       {
  #         users_id: 2,
  #         requests_id: 1,
  #         finished: 0,
  #         check_mark: 0
  #       }
  #     }
  #   assert_response :success
  # end

  test "should show enrollment" do
    get enrollment_url(@enrollment)
    assert_response :success
  end

  test "should get edit" do
    get edit_enrollment_url(@enrollment)
    assert_response :success
  end

  test "should update enrollment" do
    patch enrollment_url(@enrollment), params: { enrollment: { check_mark: 1 } }
    assert_response :success
  end

  # test "should destroy enrollment" do
  #   delete enrollment_url(@enrollment)
  #   assert_response :success
  # end
end
