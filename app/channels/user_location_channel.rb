class UserLocationChannel < ApplicationCable::Channel
  def subscribed
    stream_from "user_locations"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def display
    # puts "called"
  end
end
