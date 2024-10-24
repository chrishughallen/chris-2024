class TitleComponent < ViewComponent::Base
  def initialize(semantic_tag: "div", size: nil)
    @semantic_tag = semantic_tag
    @size = size
  end

  def call
    content_tag @semantic_tag, content, class: css_class
  end

  def css_class
    "title #{add_css_class_for_size}"
  end

  def add_css_class_for_size
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

  attr_reader :semantic_tag
end
