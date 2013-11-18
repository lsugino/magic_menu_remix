class Item < ActiveRecord::Base
  validates :name, presence: true
  validates :price, presence: true
  has_many :menus, :through => :menu_items
  has_many :menu_items
end