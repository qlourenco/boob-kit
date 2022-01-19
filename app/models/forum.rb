class Forum < ApplicationRecord
  validates :pseudo, :age, :commentaire, presence: true
  validates_inclusion_of :age, :in => 0..120
end
