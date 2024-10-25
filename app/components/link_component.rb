class LinkComponent < ViewComponent::Base
  VALID_SCHEMES = %w[primary secondary light dark accent].freeze
  def initialize(scheme: "primary", url: nil, underline: false)
    @scheme = validate_scheme(scheme)
    @url = url
    @underline = underline
  end

  def call
    link_to content, @url, class: css_class
  end

  def css_class
    @class = "link"
    @class += " #{scheme_class}" if scheme_class.present?
    @class += " underline" if @underline
    @class
  end

  def scheme_class
    return unless @scheme.present?

    case @scheme
    when "primary"
      "link--primary"
    when "secondary"
      "link--secondary"
    when "light"
      "link--light"
    when "dark"
      "link--dark"
    when "accent"
      "link--accent"
    end
  end

  private

  def validate_scheme(scheme)
    unless VALID_SCHEMES.include?(scheme)
      raise ArgumentError, "Invalid scheme: #{scheme}. Choose from #{VALID_SCHEMES.join(', ')}."
    end
    scheme
  end
end
