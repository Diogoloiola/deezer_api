module Deezer
  module Api
    class Podcast < Resource
      def results
        get_request('/chart/0/podcasts')
      end
    end
  end
end
