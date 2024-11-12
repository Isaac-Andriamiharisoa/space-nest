class NotificationsController < ApplicationController
  def count
    count = Notification.where(user_id: current_user.id, read: false).count
    render json: { count: count }
  end
end
