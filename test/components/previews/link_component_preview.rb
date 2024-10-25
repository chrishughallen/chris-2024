class LinkComponentPreview < ViewComponent::Preview
  # @param scheme select { choices: [primary, secondary, light, dark, accent] }
  # @param underline toggle
  def link(scheme: nil, underline: false)
    render(LinkComponent.new(scheme: scheme, url: "https://example.com", underline: underline).with_content("Click me"))
  end
end
