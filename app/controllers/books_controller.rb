class BooksController < ApplicationController
  def new
   @book_image = Book.new
  end
  
  def create
    @book_image = Book.new(post_image_params)
    @book_image.user_id = current_user.id
    @book_image.save
    redirect_to book_path
  end
end
