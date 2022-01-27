module Deezer
  class User < Dry::Struct
    attribute :name, Types::Strict::String
    attribute :link, Types::Strict::String
    attribute :picture, Types::Strict::String
    attribute :picture_small, Types::Strict::String
    attribute :picture_medium, Types::Strict::String
    attribute :picture_xl, Types::Strict::String
    attribute :country, Types::Strict::String
    attribute :tracklist, Types::Strict::String
    attribute :type, Types::Strict::String
  end
end
