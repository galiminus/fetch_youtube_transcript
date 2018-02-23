# -*- encoding: utf-8 -*-

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fetch_youtube_transcript/version"

Gem::Specification.new do |gem|
  gem.name          = "fetch_youtube_transcript"
  gem.version       = FetchYoutubeTranscript::VERSION
  gem.authors       = ["Victor Goya"]
  gem.email         = ["phorque@phorque.it"]
  gem.description   = "Fetch Youtube Transcript"
  gem.summary       = "Fetch Youtube Transcript"
  gem.homepage      = "https://phorque.it"

  gem.files         = `git ls-files -z`.split("\x0")
  gem.executables   = %w(fetch_youtube_transcript)
  gem.require_paths = ["lib"]
  gem.bindir        = 'bin'

  gem.licenses      = ["MIT"]

  gem.required_ruby_version = "~> 2.0"

  gem.add_development_dependency "byebug"
end
