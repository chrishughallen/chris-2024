class TitleComponentPreview < ViewComponent::Preview
  # @param semantic_tag select { choices: [div, h1, h2, h3, h4, h5, h6] }
  # @param size select { choices: [sm, md, lg, xl, xxl] }
  # @param scheme select { choices: [primary, secondary, light, dark, accent] }
  # @param font select { choices: [sans, serif] }
  # @param bold toggle
  def title(semantic_tag: "div", size: "md", scheme: "dark", font: "serif", bold: false)
    render(TitleComponent.new(semantic_tag: semantic_tag, size: size, scheme: scheme, font: font, bold: bold).with_content("Hello, world!"))
  end
end
