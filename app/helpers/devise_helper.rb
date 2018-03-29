module DeviseHelper
  def devise_error_messages!

    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    html = <<-HTML
    <div class="alert alert-danger alert-dismissible show" role="alert">
      <button type="button" class="close" data-dismiss="alert">
        <span aria-hidden="true">&times;</span>
      </button>
      <strong>
       #{pluralize(resource.errors.count, "erro")} deve ser corrigido
      </strong>
      #{messages}
    </div>
    HTML

    html.html_safe
  end
end
