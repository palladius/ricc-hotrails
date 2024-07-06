class Quote < ApplicationRecord
  validates :name, :uniqueness => true
end
