json.array!(@requests) do |request|
  json.extract! request, :id, :author, :edition, :bookTitle, :instructor, :courseCode
  json.url request_url(request, format: :json)
end
