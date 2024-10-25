class ButtonComponent < ViewComponent::Base
  def initialize(scheme: nil, type: "button", url: nil, size: "default")
    @scheme = scheme
    @type = type
    @url = url
    @size = size
  end

  def call
    if @url.present?
      link_to content, @url, class: css_class
    else
      button_tag content, class: css_class, type: @type
    end
  end

  def css_class
    @class = "button"
    @class += " #{scheme_class}" if scheme_class.present?
    @class += " #{size_class}" if size_class.present?
    @class
  end

  def scheme_class
    return unless @scheme.present?

    case @scheme
    when "primary"
      "button--primary"
    when "secondary"
      "button--secondary"
    when "light"
      "button--light"
    when "dark"
      "button--dark"
    when "accent"
      "button--accent"
    end
  end

  def size_class
    return unless @size.present?

    case @size
    when "sm"
      "button--sm"
    when "default"
      "button--default"
    when "lg"
      "button--lg"
    end
  end
end
