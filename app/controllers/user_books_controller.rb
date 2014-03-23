class UserBooksController < ApplicationController
  def create
    user = User.find(params[:user_id])
    book = Book.find(params[:book_id])
    user.books << book
    redirect_to book_path(book)
  end

  def destroy
    book = Book.find(params[:book_id])
    current_user.books.delete(book)
    redirect_to user_books_path
  end

  def index
    @user = User.find(params[:user_id])
    render partial: "users/books_index", locals: { user: @user }
  end
end