json.array!(@books) do |book|
  json.extract! book, :id, :courseTitle, :courseCode, :instructor, :school, :ourPrice, :canotechPrice, :numCopies, :bookTitle, :author, :edition, :dept, :comment
  json.url book_url(book, format: :json)
end
