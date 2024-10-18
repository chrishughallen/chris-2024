class TitleComponent < ViewComponent::Base
  def initialize(semantic_tag:)
    @semantic_tag = semantic_tag
  end

  def call
    content_tag @semantic_tag, content, class: "title"
  end

  attr_reader :semantic_tag
end
