# app/channels/backlog_items_channel.rb
class BacklogItemsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "backlog_items_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
