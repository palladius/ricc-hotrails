module ApplicationHelper

  # da https://www.hotrails.dev/turbo-rails/flash-messages-hotwire
  def render_turbo_stream_flash_messages
    turbo_stream.prepend "flash", partial: "layouts/flash"
  end


  def form_error_notification(object)
    if object.errors.any?
      tag.div class: "error-message" do
        object.errors.full_messages.to_sentence.capitalize
      end
    end
  end

  # too complex for me to understrand. Requiews understanding of dom_id and edge cases#
  # see https://www.hotrails.dev/turbo-rails/nested-turbo-frames
  def nested_dom_id(*args)
    args.map { |arg| arg.respond_to?(:to_key) ? dom_id(arg) : arg }.join("_")
  end

end
