module Deezer
  module Api
    class Track < Resource
      def tracks
        get_request('/chart/tracks')
      end
    end
  end
end
