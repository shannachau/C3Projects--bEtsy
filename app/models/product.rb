class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates :name, presence: true, uniqueness: true
  validates :price, presence:true, numericality: {only_decimal: true}
end