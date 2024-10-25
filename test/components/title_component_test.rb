require "test_helper"

class TitleComponentTest < ViewComponent::TestCase
  def test_renders_title_with_default_size
    render_inline(TitleComponent.new().with_content("Hello, World!"))
    assert_selector "div", class: "title", text: "Hello, World!"
  end

  def test_renders_title_with_size
    render_inline(TitleComponent.new(size: "xl").with_content("Hello, World!"))
    assert_selector "div", class: "title title--xl", text: "Hello, World!"
  end

  def test_renders_with_scheme
    render_inline(TitleComponent.new(scheme: "secondary").with_content("Hello, World!"))
    assert_selector "div", class: "title title--secondary", text: "Hello, World!"
  end

  def test_renders_with_semantic_tag
    render_inline(TitleComponent.new(semantic_tag: "h1").with_content("Hello, World!"))
    assert_selector "h1", class: "title", text: "Hello, World!"
  end

  def test_renders_with_bold
    render_inline(TitleComponent.new(bold: true).with_content("Hello, World!"))
    assert_selector "div", class: "title bold", text: "Hello, World!"
  end

  def test_rendrs_with_serif_font
    render_inline(TitleComponent.new(font: "serif").with_content("Hello, World!"))
    assert_selector "div", class: "title font-serif", text: "Hello, World!"
  end
end
