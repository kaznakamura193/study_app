json.array!(@tssks) do |tssk|
  json.extract! tssk, :id, :title, :detail
  json.url tssk_url(tssk, format: :json)
end
