class Notification < ApplicationRecord
  has_many :clients_notifications
  has_many :users, through: :clients_notifications
end
