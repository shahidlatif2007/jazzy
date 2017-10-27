require 'rouge'

module Jazzy
  # This module helps highlight code
  module Highlighter
    def self.highlight(source, language)
      source && Rouge.highlight(source, language, 'html')
    end

    def self.highlight_objc(source)
      highlight(source, 'objc')
    end

    def self.highlight_swift(source)
      highlight(source, 'swift')
    end
  end
end
