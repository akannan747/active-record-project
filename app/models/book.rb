class Book < ActiveRecord::Base
  belongs_to :authors
  belongs_to :categories
  has_many :libraries
  has_many :users, through: :libraries
end