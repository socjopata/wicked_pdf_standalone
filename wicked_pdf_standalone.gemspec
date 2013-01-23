# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "wicked_pdf_standalone/version"

Gem::Specification.new do |gem|
  gem.name          = "wicked_pdf_standalone"
  gem.version       = WickedPdfStandalone::VERSION
  gem.authors       = ["Radek Jedryszczak"]
  gem.email         = ["socjopata@gmail.com"]
  gem.description   = "A standalone version of wicked_pdf that can be used, basically, in any desired context"
  gem.summary       = "A standalone version of wicked_pdf that can be used, basically, in any desired context"
  gem.homepage      = "http://www.selleo.com"

  gem.files         = Dir["{lib}/**/*"] + ["LICENSE.txt", "Rakefile", "README.md", "Gemfile", "Gemfile.lock"]

  gem.add_dependency 'wicked_pdf'
  gem.add_dependency "rails", ">= 3.0.3"
end
