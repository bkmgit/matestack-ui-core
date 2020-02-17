module Utils

  def stripped(html_string)
    html_string
      .gsub(/>\s+</, "><")
      .gsub("\n", "")
      .gsub(/\s+/, "")
      .gsub("<br>", "<br/>") # TODO Tobi get your browser together
  end

  def path_exists?(path_as_symbol)
  	Rails.application.routes.url_helpers.method_defined?(path_as_symbol)
  end

end
