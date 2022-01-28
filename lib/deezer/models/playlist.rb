module Deezer
  class Playlist < Dry::Struct
    attribute :id, Types::Strict::Integer
    attribute :title, Types::Strict::String
    attribute :description?, Types::Strict::String.optional
    attribute :picture, Types::Strict::String
    attribute :picture_small, Types::Strict::String
    attribute :picture_medium, Types::Strict::String
    attribute :picture_big, Types::Strict::String
    attribute :tracklist, Types::Strict::String.optional
    attribute :tracks?, Types::Hash.schema(
      data: Types::Array.of(Track)
    ).optional
  end
end
