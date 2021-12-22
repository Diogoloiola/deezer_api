module Deezer
  # Model de requisição para nossos objetos
  class Resource
    attr_reader :client, :klass

    def initialize(client, klass)
      @client = client
      @klass = klass
    end

    private

    def get_request(url, params: {}, headers: {})
      handle_response client.connection.get(url, params, headers)
    end

    def handle_response(response)
      case response.status
      when 200
        response_sucess(response)
      end
    end

    def response_sucess(response)
      objects = []
      response = response.body[:tracks].nil? ? response.body[:data] : response.body[:tracks][:data]

      response.each do |track|
        objects.push(klass.new(track))
      end

      objects
    end
  end
end
