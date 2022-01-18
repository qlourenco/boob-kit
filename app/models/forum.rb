class Forum < ApplicationRecord
  validates :pseudo, :age, :commentaire, presence: true
end
