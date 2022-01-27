module Deezer
  class Episode < Dry::Struct
    attribute :id, Types::Strict::Integer
    attribute :release_date, Types::Strict::String
    attribute :duration, Types::Strict::Integer
    attribute :picture, Types::Strict::String
    attribute :type, Types::Strict::String
  end
end
