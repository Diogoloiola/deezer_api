json.extract! track, :title, :preview

json.artist do
  json.partial! 'artist', artist: track.artist
end
