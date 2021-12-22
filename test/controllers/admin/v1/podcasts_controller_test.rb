require "test_helper"

class Admin::V1::PodcastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_v1_podcast = admin_v1_podcasts(:one)
  end

  test "should get index" do
    get admin_v1_podcasts_url, as: :json
    assert_response :success
  end

  test "should create admin_v1_podcast" do
    assert_difference('Admin::V1::Podcast.count') do
      post admin_v1_podcasts_url, params: { admin_v1_podcast: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show admin_v1_podcast" do
    get admin_v1_podcast_url(@admin_v1_podcast), as: :json
    assert_response :success
  end

  test "should update admin_v1_podcast" do
    patch admin_v1_podcast_url(@admin_v1_podcast), params: { admin_v1_podcast: {  } }, as: :json
    assert_response 200
  end

  test "should destroy admin_v1_podcast" do
    assert_difference('Admin::V1::Podcast.count', -1) do
      delete admin_v1_podcast_url(@admin_v1_podcast), as: :json
    end

    assert_response 204
  end
end
