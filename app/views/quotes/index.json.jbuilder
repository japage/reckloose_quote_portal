json.array!(@quotes) do |quote|
  json.extract! quote, :name
  json.url quote_url(quote, format: :json)
end
