module ApplicationHelper

  def broadcast(channel, &block)
    Pusher[channel].trigger('messages', { :message => capture(&block)})
  end

end
