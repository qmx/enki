class EnkiFormatter
  class << self
    def format_as_xhtml(text)
      BlueCloth.new(CGI::unescapeHTML(text)).to_html
    end 
  end
end
