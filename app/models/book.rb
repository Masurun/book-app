class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  with_options presence: true do
  validates :title
  validates :author
  validates :publication
  validates :publication_date
  validates :category_id
  end
  validates :category_id, numericality: { other_than: 1 }
end
