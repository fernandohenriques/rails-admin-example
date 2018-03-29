class Playlist < ApplicationRecord
  has_and_belongs_to_many :video
  has_and_belongs_to_many :usuario


  validates :nome, :presence => true
end
