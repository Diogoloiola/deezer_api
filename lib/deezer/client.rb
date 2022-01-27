module Deezer
  # Instância principal que vai chamar a api do deezer
  class Client
    BASE_URL = 'https://api.deezer.com/'.freeze

    attr_reader :adapter

    def initialize(adapter: Faraday.default_adapter)
      @adapter = adapter
    end

    def track
      Deezer::Api::Track.new(self, Deezer::Track)
    end

    def podcast
      Deezer::Api::Podcast.new(self, Deezer::Podcast)
    end

    def genre
      Deezer::Api::Genre.new(self, Deezer::Genre)
    end

    def connection
      @connection ||= Faraday.new(BASE_URL) do |con|
        con.request :json
        con.response :json, content_type: 'application/json', parser_options: { symbolize_names: true }
        con.adapter adapter
      end
    end
  end
end
