class ClientsNotification < ApplicationRecord
  belongs_to :user
  belongs_to :notification
  def self.see_notifications user
    ClientsNotification.where(user: user, seen: nil).update_all(seen: DateTime.now())
    ClientsNotification.where(user: user)
  end
end
