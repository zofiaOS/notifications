class Notification < ApplicationRecord
  has_many :clients_notifications
  has_many :users, through: :clients_notifications
  scope :filter_by_user, -> (user) {Notification.joins(:clients_notifications).where(clients_notifications: {id: ClientsNotification.see_notifications(user)})}
end
