module Deezer
  module Api
    class Search < Resource
      def search(query, index = 0, limit = 100)
        self.klass = Deezer::Playlist
        get_request("search/playlist?q=#{query}&index=#{index}&limit=#{limit}")
      end

      def playlist(query, index = 0, limit = 100)
        self.klass = Deezer::Playlist
        get_request("search/playlist?q=#{query}}&index=#{index}&limit=#{limit}")
      end

      def podcast(query, index = 0, limit = 100)
        self.klass = Deezer::Podcast
        get_request("search/podcast?q=#{query}}&index=#{index}&limit=#{limit}")
      end

      def track(query, index = 0, limit = 100)
        self.klass = Deezer::Track
        get_request("search/track?q=#{query}}&index=#{index}&limit=#{limit}")
      end

      def user(query, index = 0, limit = 100)
        self.klass = Deezer::User
        get_request("search/user?q=#{query}}&index=#{index}&limit=#{limit}")
      end
    end
  end
end
