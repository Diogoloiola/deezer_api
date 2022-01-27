module Deezer
  class Genre < Dry::Struct
    attribute :id, Types::Strict::Integer
    attribute :name?, Types::Strict::String
    attribute :picture_small, Types::Strict::String
    attribute :picture_medium, Types::Strict::String
    attribute :picture_big, Types::Strict::String
    attribute :tracklist?, Types::Strict::String.optional
  end
end
