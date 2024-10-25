class TitleComponentPreview < ViewComponent::Preview
  # Title
  # ---------------
  # Titles should be used as an introduction to sections of content.
  #
  # The titles semantic tag should be chosen based on the context of the content.
  #
  # The titles size should be chosen to match the importance of the content.
  #
  # The titles color scheme should be chosen carefully to ensure it is legible on the background color.
  #
  # The titles font should be chosen to match the overall design of the site.
  #
  # The titles weight should be chosen to match the importance of the content.
  #
  # @param semantic_tag select { choices: [div, h1, h2, h3, h4, h5, h6] }
  # @param size select { choices: [sm, md, lg, xl, xxl] }
  # @param scheme select { choices: [primary, secondary, light, dark, accent] }
  # @param font select { choices: [sans, serif] }
  # @param bold toggle
  def title(semantic_tag: "div", size: nil, scheme: nil, font: nil, bold: false)
    render(TitleComponent.new(semantic_tag: semantic_tag, size: size, scheme: scheme, font: font, bold: bold).with_content("Hello, world!"))
  end
end
