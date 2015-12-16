class Product < ActiveRecord::Base
  attr_accessible :description, :model, :name

  has_many :comments
end
