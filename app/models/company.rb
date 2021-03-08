class Company < ApplicationRecord
  has_many :portfolio_entries
  has_many :users, through: :portfolio_entries
  has_many :performances
end
