module Deezer
  module Api
    class Playlist < Resource
      def find(id, index = 0, limit = 100)
        get_request("playlist/#{id}?index=#{index}&limit=#{limit}")
      end

      def tracks(id, index = 0, limit = 100)
        get_request("playlist/#{id}/tracks?index=#{index}&limit=#{limit}")
      end
    end
  end
end
