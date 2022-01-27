module Deezer
  module Api
    class Genre < Resource
      def all
        get_request('/genre')
      end

      def artists(id)
        get_request("/genre/#{id}/artists")
      end

      def podcasts(id)
        get_request("/genre/#{id}/podcasts")
      end

      def radios(id)
        get_request("/genre/#{id}/radios")
      end
    end
  end
end
