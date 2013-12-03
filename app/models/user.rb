class User < ActiveRecord::Base
  has_many :line_items
  has_many :products, through: :line_items

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end