require "date"
class Slug
  STOP_WORDS = %w[a an and are as at be but by for if in into is it no of on or such that the their then there these they this to s was will with]

  attr_reader :title

  def initialize(title)
    @title = title
  end

  def to_slug
    slug = title
      .downcase
      .gsub(/[\W_]/, " ")
      .split(" ")
      .select { |s| s unless s.empty? }
      .collect { |s| s unless STOP_WORDS.include?(s) }
      .join(" ")
      .strip
    "#{slug.gsub(/ +/, "-")}.md"
  end
end
