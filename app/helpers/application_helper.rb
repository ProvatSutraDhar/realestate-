module ApplicationHelper

  def profile_picture account, width=100
    thumb = account.image.present? ? account.image.thumb.url : "placeholder.jpg"
    image_tag thumb, width: width, class: "profile-pic img-circle"
  end

  def toastr_flash
    flash.each_with_object([]) do |(type, message), flash_messages|
      type = 'success' if type == 'notice'
      type = 'error' if type == 'alert'
      text = "<script>toastr.#{type}('#{message}', '', { closeButton: true, progressBar: true })</script>"
      flash_messages << text.html_safe if message
    end.join("\n").html_safe
  end

end
