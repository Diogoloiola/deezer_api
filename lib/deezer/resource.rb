module Deezer
  # Model de requisição para nossos objetos
  class Resource
    attr_accessor :client, :klass

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
      case response.body[:type]
      when 'playlist'
        parse_response_playlist(response.body)
      when 'user'
        parse_response_user(response.body)
      else
        parse_normal_response(response.body)
      end
    end

    def parse_response_playlist(response)
      klass.new(response)
    end

    def parse_response_user(response)
      klass.new(response)
    end

    def parse_normal_response(response)
      objects = []

      response = response[:tracks].nil? ? response[:data] : response[:tracks][:data]

      select_correct_class(response[0][:type])

      response.each do |item|
        objects.push(klass.new(item))
      end

      objects
    end

    def select_correct_class(option = '')
      self.klass = Deezer::Episode if option == 'episode'
    end
  end
end
