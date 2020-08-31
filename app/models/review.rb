class Review < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to_active_hash :genre
  has_one_attached :image


  validates :title, :author, :genre, :content, presence: true
  
  validates :genre_id, numericality: { other_than: 1 }
end 




