class User < ActiveRecord::Base
  has_many :libraries
  has_many :books, through: :libraries

  def check_out_book(book, due_date)
    check_out = Library.new
    check_out.book_id = book.id
    check_out.user_id = self.id
    check_out.due_date = due_date
    check_out.returned = false
    check_out.save
  end

end