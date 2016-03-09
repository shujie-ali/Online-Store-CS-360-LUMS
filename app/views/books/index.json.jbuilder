json.array!(@books) do |book|
  json.extract! book, :id, :name, :coursecode, :instructor, :price, :semester, :dept
  json.url book_url(book, format: :json)
end
