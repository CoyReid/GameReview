class User < ActiveRecord::Base
  has_many :reviews
  has_many :games, through: :reviews
  has_many :comments
end