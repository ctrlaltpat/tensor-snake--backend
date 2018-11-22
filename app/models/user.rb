class User < ApplicationRecord
  has_many :scores, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
