class Menu < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :user
  has_many :items, :through => :menu_items
  has_many :menu_items
end