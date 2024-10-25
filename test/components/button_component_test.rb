require "test_helper"

class ButtonComponentTest < ViewComponent::TestCase
  def test_renders_button
    render_inline(ButtonComponent.new().with_content("Click me"))
    assert_selector "button", class: "button", text: "Click me"
  end

  def test_renders_button_with_scheme
    render_inline(ButtonComponent.new(scheme: "primary").with_content("Click me"))
    assert_selector "button", class: "button button--primary", text: "Click me"
  end

  def test_renders_link_when_url_passed
    render_inline(ButtonComponent.new(url: "https://example.com").with_content("Click me"))
    assert_selector "a", class: "button", text: "Click me"
  end

  def test_raises_error_for_invalid_scheme
    assert_raises ArgumentError do
      render_inline(ButtonComponent.new(scheme: "invalid").with_content("Click me"))
    end
  end
end
