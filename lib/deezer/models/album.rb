module Deezer
  class Album < Dry::Struct
    attribute :title, Types::Strict::String
    attribute :preview?, Types::Strict::String
    attribute :artist, Types::Hash.schema(
      name?: Types::Strict::String.optional,
      title?: Types::Strict::String.optional,
      picture_small?: Types::Strict::String.optional,
      picture_medium?: Types::Strict::String.optional,
      picture_big?: Types::Strict::String.optional
    )
    attribute :album?, Types::Hash.schema(
      cover_small?: Types::Strict::String.optional,
      cover_medium?: Types::Strict::String.optional,
      cover_big?: Types::Strict::String.optional
    ).optional
  end
end
