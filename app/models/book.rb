class Book < ActiveRecord::Base
  # attr_accessible :name, :description, :number, :rating

  validates :number, numericality: { greater_than: 0, allow_nil: true }
  validates :name, :description, presence: true

  # after_create     { category.inc(:items_count, 1) } #Item.create
  # after_destroy    { category.inc(:items_count, -1) } #Item.destroy
end