json.array!(@snippets) do |snippet|
  json.extract! snippet, :id, :name, :email
  json.url snippet_url(snippet, format: :json)
end
