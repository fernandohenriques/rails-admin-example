class Video < ApplicationRecord
  has_and_belongs_to_many :playlist


  validates :nome, :presence => true
  validates :url, :presence => true
end
