class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :perfil
  has_and_belongs_to_many :playlist

  validates :nome, :presence => true
  validates :email, :presence => true
  validates :perfil, :presence => true
end
