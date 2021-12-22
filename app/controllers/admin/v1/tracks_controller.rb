module Admin
  module V1
    class TracksController < ApplicationController
      def index
        @tracks = Deezer::Client.new.track.tracks
      end
    end
  end
end

# TracksController
