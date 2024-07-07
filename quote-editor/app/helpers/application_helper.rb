module ApplicationHelper

  # da https://www.hotrails.dev/turbo-rails/flash-messages-hotwire
  def render_turbo_stream_flash_messages
    turbo_stream.prepend "flash", partial: "layouts/flash"
  end

end
