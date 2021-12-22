json.podcasts do
  json.array! @podcasts, partial: 'podcast', as: :podcast
end
