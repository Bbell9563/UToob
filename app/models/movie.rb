class Movie < ApplicationRecord
  has_many :comments
  has_many :user, through :comments
end
