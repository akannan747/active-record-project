class Library < ActiveRecord::Base
  belongs_to :books
  belongs_to :users
end