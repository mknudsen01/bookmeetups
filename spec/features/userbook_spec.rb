require 'spec_helper'

describe UserBooksController, :js => false do
  let!(:my_user) { create :user }
  let!(:my_book) { create :book }
  before(:each) { my_user.books << my_book }

  it "a user can view all the books in their collection" do
    visit user_books_path(my_user)
    expect(page).to have_content my_book.title
    expect(page).to have_content my_book.author
  end



end

