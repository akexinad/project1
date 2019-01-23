@title = params[:title].capitalize
  url = "https://www.googleapis.com/books/v1/volumes?q=title:#{ @title }"
  info = HTTParty.get url
  book_cover = info["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
  @img = "<img src='#{book_cover}'alt='#{@title} cover'"
  @author = info["items"][0]["volumeInfo"]["authors"].join(', ')
  @description = info["items"][0]["volumeInfo"]["description"]

<!-- FOR THE THINKERS CONTROLLER -->
url = "https://www.googleapis.com/books/v1/volumes?q=title:#{ @thinker.name }"
info = HTTParty.get url
info["items"][0]["volumeInfo"]["author"]

if info["items"][0]["volumeInfo"]["author"] == @thinker.name
