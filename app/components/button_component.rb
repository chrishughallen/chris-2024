class ButtonComponent < ViewComponent::Base
  VALID_SIZES = %w[sm lg].freeze
  VALID_SCHEMES = %w[primary secondary light dark accent].freeze

  def initialize(scheme: "primary", type: "button", url: nil, size: nil)
    @scheme = validate_scheme(scheme) if scheme.present?
    @type = type
    @url = url
    @size = validate_size(size) if size.present?
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
    when "lg"
      "button--lg"
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
