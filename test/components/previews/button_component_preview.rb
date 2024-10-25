class ButtonComponentPreview < ViewComponent::Preview
  # Button
  # ---------------
  # Buttons should be used to allow users to interact with the page.
  #
  # The buttons color scheme should be chosen carefully to ensure it is easily seen on the background color.
  #
  # The buttons type should be chosen based on the action the button will perform.
  #
  # The buttons size should be chosen based on the importance of the action the button will perform or the context of it's parent container.
  #
  # If a url is provided the button will be rendered as a link with the url as the href.
  #
  # @param scheme select { choices: [primary, secondary, light, dark, accent]}
  # @param type select { choices: [button, submit, reset]}
  # @param url text
  # @param size select { choices: [sm, default, lg]}
  def button(scheme: nil, type: "button", url: nil, size: nil)
    render(ButtonComponent.new(scheme: scheme, type: type, url: url, size: size).with_content("Click me"))
  end
end
