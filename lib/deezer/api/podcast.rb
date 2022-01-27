module Deezer
  module Api
    class Podcast < Resource
      def results
        get_request('/podcast')
      end

      def find(id)
        get_request("/podcast/#{id}/episodes")
      end
    end
  end
end
