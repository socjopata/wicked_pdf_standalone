# WickedPdfStandalone

## Installation

Add this line to your application's Gemfile:

    gem 'wicked_pdf_standalone'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wicked_pdf_standalone

## Usage

Here is example usage, with draper:

    $  output_path = File.join("/tmp", "file.pdf")
    $  @subject = Model.find(1)
    $  @pdf_renderer_instance = WkPdfRenderer.new
    $  @pdf_renderer_instance.to_file(output_path, subject.some_default_pdf_renderer_options) do |renderer|
    $    renderer.instance_variable_set("@subject", SubjectDecorator.decorate(@subject))
    $  end

And if you want to spit out a file, right away:

    $  save_path = Rails.root.join("filename.pdf")
    $  file = File.open(save_path, 'wb') do |file|
    $    file << @pdf_renderer_instance.send(:make_pdf)
    $  end
    $

## Credits
   $ Developed during open-source day at Selleo web & mobile software development house - http://selleo.com

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
