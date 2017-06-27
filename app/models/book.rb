class Book < ActiveRecord::Base
  # attr_accessible :name, :description, :number, :rating

  validates :number, numericality: { greater_than: 0, allow_nil: true }
  validates :name, :description, presence: true
end
