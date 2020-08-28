class Review < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  
  validates :title, :author, :content, :genre, presence: true

  validates :genre_id, numericality: { other_than: 1 }
end
