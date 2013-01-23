# -*- encoding : utf-8 -*-
require "wicked_pdf_standalone/version"

module WickedPdfStandalone
  class WkPdfRenderer < ActionController::Base
    include Rails.application.routes.url_helpers
    self.view_paths = "app/views"

    def initialize(*args)
      config.assets_dir = Rails.root.join("public")
      super
    end

    def to_html(template_path, options = {}, &block)
      @html_string = markup(template_path, options, &block)
    end

    def to_file(output_path, options={}, &block)
      html_renderer_options = {}
      html_renderer_options[:layout] = options.delete(:layout)
      to_html(options[:template], html_renderer_options, &block)
      render_with_wicked_pdf({:pdf => 'null',
                              :save_to_file => output_path,
                              :save_only => true}.merge(options))
      output_path
    end

    private

    def set_draper_context
      Draper::ViewContext.current = self.view_context if defined?(Draper)
    end

    def markup(template_path, options={}, &block)
      block.call(self) if block_given?
      set_draper_context
      render_to_string(:template => template_path, :layout => options[:layout])
    end

    #For testing purposes.
    def make_pdf(options = {})
      options = prerender_header_and_footer(options)
      w = WickedPdf.new(options[:wkhtmltopdf])
      w.pdf_from_string(@html_string, options)
    end

  end
end
