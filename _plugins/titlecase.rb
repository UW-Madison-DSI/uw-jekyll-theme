require 'liquid'

# Capitalize all words of the input
module Jekyll
  module ToTitleCase
    def to_title_case(words)
      return words.split(' ').map(&:capitalize).join(' ')
    end
  end
end

Liquid::Template.register_filter(Jekyll::ToTitleCase)