module Deezer
  module Api
    class User < Resource
      def find(id)
        self.klass = Deezer::User
        get_request("/user/#{id}")
      end

      def artists(id, index = 0, limit = 100)
        self.klass = Deezer::Genre
        get_request("/user/#{id}/artists?index#{index}&limit=#{limit}")
      end

      def podcast(id, index = 0, limit = 100)
        self.klass = Deezer::Podcast
        get_request("/user/#{id}/podcast?index#{index}&limit=#{limit}")
      end

      def tracks(id, index = 0, limit = 100)
        self.klass = Deezer::Track
        get_request("/user/#{id}/charts/tracks?index#{index}&limit=#{limit}")
      end

      def albums(id, index = 0, limit = 100)
        self.klass = Deezer::Album
        get_request("/user/#{id}/charts/albums?index#{index}&limit=#{limit}")
      end

      def playlists(id, index = 0, limit = 100)
        self.klass = Deezer::Playlist

        get_request("/user/#{id}/charts/playlists?index#{index}&limit=#{limit}")
      end
    end
  end
end
