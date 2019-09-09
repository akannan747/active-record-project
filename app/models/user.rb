class User < ActiveRecord::Base
  has_many :borrows
  has_many :books, through: :borrows

  def check_out_book(book, due_date)
    borrow = Borrow.new
    borrow.book_id = book.id
    borrow.user_id = self.id
    borrow.due_date = due_date
    borrow.returned = false
    borrow.save
  end
end