class NotificationsController < ApplicationController
  def index
    @notifications = Notification.filter_by_user(current_user)
    render json: @notifications
  end
end
