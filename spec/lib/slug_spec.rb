require_relative "../spec_helper"

describe Slug do
  it "will return a slug" do
    slug = Slug.new("Hello World").to_slug
    expect(slug).to eql("hello-world.md")
  end
end
