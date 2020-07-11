class BabiesChannel < ApplicationCable::Channel

  def subscribed
    stream_from "babies_#{params[:room]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def create_baby(data)
    baby = Baby.where(name: data["baby"]["name"], list_id: data["baby"]["list_id"]).first
    ActionCable.server.broadcast("babies_#{data["baby"]["list_id"]}", {type: "new_baby", baby: baby})
  end

  def cross_baby(data)
    baby = Baby.where(name: data["baby"]["name"], list_id: data["baby"]["list_id"]).first
    ActionCable.server.broadcast("babies_#{data["baby"]["list_id"]}", {type: "cross_baby", baby: baby})
  end
end
