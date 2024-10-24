class TitleComponentPreview < ViewComponent::Preview
  def default
    render(TitleComponent.new.with_content("Hello, world!"))
  end

  def with_h1_semantic_tag
    render(TitleComponent.new(semantic_tag: "h1").with_content("Hello, world!"))
  end
end
