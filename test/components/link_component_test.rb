require "test_helper"

class LinkComponentTest < ViewComponent::TestCase
  def test_renders_link
    render_inline(LinkComponent.new(url: "https://example.com").with_content("Click me"))
    assert_selector "a", class: "link", text: "Click me"
  end

  def test_renders_with_scheme
    render_inline(LinkComponent.new(scheme: "secondary", url: "https://example.com").with_content("Click me"))
    assert_selector "a", class: "link link--secondary", text: "Click me"
  end

  def test_renders_with_underline
    render_inline(LinkComponent.new(url: "https://example.com", underline: true).with_content("Click me"))
    assert_selector "a", class: "link underline", text: "Click me"
  end

  def test_raises_error_for_invalid_scheme
    assert_raises ArgumentError do
      render_inline(LinkComponent.new(scheme: "invalid", url: "https://example.com").with_content("Click me"))
    end
  end
end
