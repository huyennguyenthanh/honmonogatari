class HomeController < ApplicationController
  def home
      @books = Book.all
    end
end
