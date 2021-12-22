require "test_helper"

class Admin::V1::TracksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_v1_track = admin_v1_tracks(:one)
  end

  test "should get index" do
    get admin_v1_tracks_url, as: :json
    assert_response :success
  end

  test "should create admin_v1_track" do
    assert_difference('Admin::V1::Track.count') do
      post admin_v1_tracks_url, params: { admin_v1_track: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show admin_v1_track" do
    get admin_v1_track_url(@admin_v1_track), as: :json
    assert_response :success
  end

  test "should update admin_v1_track" do
    patch admin_v1_track_url(@admin_v1_track), params: { admin_v1_track: {  } }, as: :json
    assert_response 200
  end

  test "should destroy admin_v1_track" do
    assert_difference('Admin::V1::Track.count', -1) do
      delete admin_v1_track_url(@admin_v1_track), as: :json
    end

    assert_response 204
  end
end
