class TitleComponentPreview < ViewComponent::Preview
  # Default title
  # ---------------
  # This is the title component with the default settings.
  #
  # @label Default
  def default
    render(TitleComponent.new.with_content("Hello, world!"))
  end

  # @!group Semantic tags
  # Semantic Tags
  # ---------------
  # Change the semantic tag of the title component by passing the `semantic_tag` param.
  #
  # Don't rely on the semantic tag to change the display of the title as it only relates to html semantics.
  def h1
    render(TitleComponent.new(semantic_tag: "h1").with_content("Hello, world!"))
  end

  def h2
    render(TitleComponent.new(semantic_tag: "h2").with_content("Hello, world!"))
  end

  def h3
    render(TitleComponent.new(semantic_tag: "h3").with_content("Hello, world!"))
  end

  def h4
    render(TitleComponent.new(semantic_tag: "h4").with_content("Hello, world!"))
  end

  def h5
    render(TitleComponent.new(semantic_tag: "h5").with_content("Hello, world!"))
  end

  def h6
    render(TitleComponent.new(semantic_tag: "h6").with_content("Hello, world!"))
  end

  # @!endgroup
  #
  #
  # @!group Sizes
  # Sizes
  # ---------------
  # Change the size of the title component by passing the `size` param.
  #
  # @label S
  def small
    render(TitleComponent.new(size: "sm").with_content("Hello, world!"))
  end

  # @label M
  def medium
    render(TitleComponent.new(size: "md").with_content("Hello, world!"))
  end

  # @label L
  def large
    render(TitleComponent.new(size: "lg").with_content("Hello, world!"))
  end

  # @label XL
  def extra_large
    render(TitleComponent.new(size: "xl").with_content("Hello, world!"))
  end

  # @label XXL
  def extra_extra_large
    render(TitleComponent.new(size: "xxl").with_content("Hello, world!"))
  end
  # @!endgroup
end
