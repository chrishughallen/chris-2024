class TitleComponent < ViewComponent::Base
  def initialize(semantic_tag: "div", size: nil, scheme: nil, font: nil, bold: false)
    @semantic_tag = semantic_tag
    @size = size
    @scheme = scheme
    @font = font
    @bold = bold
  end

  def call
    content_tag @semantic_tag, content, class: css_class
  end

  def css_class
    @class = "title"
    @class += " #{size_class}" if size_class.present?
    @class += " #{scheme_class}" if scheme_class.present?
    @class += " #{font_class}" if font_class.present?
    @class += " title--bold" if @bold
    @class
  end

  def size_class
    return unless @size.present?

    case @size
    when "sm"
      "title--sm"
    when "md"
      "title--md"
    when "lg"
      "title--lg"
    when "xl"
      "title--xl"
    when "xxl"
      "title--xxl"
    end
  end

  def scheme_class
    return unless @scheme.present?

    case @scheme
    when "primary"
      "title--primary"
    when "secondary"
      "title--secondary"
    when "light"
      "title--light"
    when "dark"
      "title--dark"
    when "accent"
      "title--accent"
    end
  end

  def font_class
    return unless @font.present?

    case @font
    when "sans"
      "title--sans"
    when "serif"
      "title--serif"
    end
  end

  attr_reader :semantic_tag
end
