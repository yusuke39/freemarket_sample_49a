class Item < ApplicationRecord
  has_many :items_like, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :item_categories
  has_many :categories, through: :item_categories
  has_many :ordered_items

  # item単体での動作をチェックしたいので一旦コメントアウトします
  # belongs_to :user
  # belongs_to :brand
end