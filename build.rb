#!/usr/bin/env ruby

require 'erb'
require 'yaml'
require 'kramdown'

FILENAMES = ((1..34).map { |number| "ch#{number}.md"} + ['appb.md']).freeze

markdown = "# Notes on Site Reliability Engineering\n\n_Adam Richardson_\n\n1. TOC\n{:toc}"

FILENAMES.each do |filename|
  parts = File.read(filename).split('---').map(&:strip).drop(1)
  metadata = YAML.load(parts[0])

  title = metadata['title']
  authors = metadata['authors']

  markdown += "\n\n## #{title}\n\n_#{authors.join(', ')}_\n\n#{parts[1]}"
end

body = Kramdown::Document.new(markdown).to_html
puts(ERB.new(File.read('template.html')).result(binding))
