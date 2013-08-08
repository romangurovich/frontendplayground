json.array!(@greetings) do |greeting|
  json.extract! greeting, :message, :author
  json.url greeting_url(greeting, format: :json)
end
