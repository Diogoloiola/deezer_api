module Admin
  module V1
    class PodcastsController < ApplicationController
      def index
        @podcasts = Deezer::Client.new.podcast.results
      end
    end
  end
end
