module Deezer
  class Podcast < Dry::Struct
    attribute :title?, Types::Strict::String.optional
    attribute :name?, Types::Strict::String.optional
    attribute :description?, Types::Strict::String.optional
    attribute :picture, Types::Strict::String
    attribute :picture_small, Types::Strict::String
    attribute :picture_medium, Types::Strict::String
    attribute :picture_big, Types::Strict::String
  end
end
