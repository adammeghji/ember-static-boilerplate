require "bundler/setup"
Bundler.require

set :css_dir, "stylesheets"
set :js_dir, "app"
set :images_dir, "images"
set :layout, nil
set :js_assets_paths, ["#{root}/vendor/javascripts/"]
set :css_assets_paths, ["#{root}/vendor/stylesheets/"]

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript

  # Enable asset_hash
  activate :asset_hash
end
