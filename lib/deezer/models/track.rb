module Deezer
  class Track < Dry::Struct
    attribute :title, Types::Strict::String
    attribute :preview, Types::Strict::String
    attribute :artist, Types::Hash.schema(
      picture_small: Types::Strict::String,
      picture_medium: Types::Strict::String,
      picture_big: Types::Strict::String
    )
  end
end
