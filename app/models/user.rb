class User < ApplicationRecord

  validates :email, :nick, :first_name, :last_name, :role, :born_year, presence: true
  validates :born_year, :only_integer, :greater_than 1920
  validates :email, :nick, uniqueness: true

  has_and_belongs_to_many :holidays

end
