# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wicked_pdf_standalone/version'

Gem::Specification.new do |gem|
  gem.name          = "wicked_pdf_standalone"
  gem.version       = WickedPdfStandalone::VERSION
  gem.authors       = ["Radek Jedryszczak"]
  gem.email         = ["socjopata@gmail.com"]
  gem.description   = %q{A standalone version of wicked_pdf that can be used, basically, in any desired context}
  gem.summary       = %q{A standalone version of wicked_pdf that can be used, basically, in any desired context}
  gem.homepage      = "http://www.selleo.com"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'wicked_pdf'
  gem.add_dependency "rails", ">= 3.0.3"
end
