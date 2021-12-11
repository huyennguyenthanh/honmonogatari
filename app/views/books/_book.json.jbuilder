json.extract! book, :id, :title, :description, :num_of_chapters, :created_at, :updated_at
json.url book_url(book, format: :json)
