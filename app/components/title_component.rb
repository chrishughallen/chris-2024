class TitleComponent < ViewComponent::Base
  VALID_SIZES = %w[sm md lg xl xxl].freeze
  VALID_SCHEMES = %w[primary secondary light dark accent].freeze

  def initialize(semantic_tag: "div", size: nil, scheme: nil, font: nil, bold: false)
    @semantic_tag = semantic_tag
    @size = validate_size(size) if size.present?
    @scheme = validate_scheme(scheme) if scheme.present?
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
    @class += " bold" if @bold
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
      "font-sans"
    when "serif"
      "font-serif"
    end
  end

  private

  def validate_size(size)
    unless VALID_SIZES.include?(size)
      raise ArgumentError, "Invalid size: #{size}. Choose from #{VALID_SIZES.join(', ')}."
    end
    size
  end

  def validate_scheme(scheme)
    unless VALID_SCHEMES.include?(scheme)
      raise ArgumentError, "Invalid scheme: #{scheme}. Choose from #{VALID_SCHEMES.join(', ')}."
    end
    scheme
  end
end
