Jekyll::Hooks.register [:pages, :documents], :pre_render do |doc|
  site = doc.site
  default_locale = site.config["default_locale"] || site.config["locale"]
  site.config["locale"] = doc.data["lang"] || default_locale
end
