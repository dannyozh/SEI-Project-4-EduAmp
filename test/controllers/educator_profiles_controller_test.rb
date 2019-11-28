require 'test_helper'

class EducatorProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @educator_profile = educator_profiles(:one)
  end

  test "should get index" do
    get educator_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_educator_profile_url
    assert_response :success
  end

  test "should create educator_profile" do
    assert_difference('EducatorProfile.count') do
      post educator_profiles_url, params: { educator_profile: {  } }
    end

    assert_redirected_to educator_profile_url(EducatorProfile.last)
  end

  test "should show educator_profile" do
    get educator_profile_url(@educator_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_educator_profile_url(@educator_profile)
    assert_response :success
  end

  test "should update educator_profile" do
    patch educator_profile_url(@educator_profile), params: { educator_profile: {  } }
    assert_redirected_to educator_profile_url(@educator_profile)
  end

  test "should destroy educator_profile" do
    assert_difference('EducatorProfile.count', -1) do
      delete educator_profile_url(@educator_profile)
    end

    assert_redirected_to educator_profiles_url
  end
end
