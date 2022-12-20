class List < ApplicationRecord
  has_many :boomarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, uniqueness: true
end
