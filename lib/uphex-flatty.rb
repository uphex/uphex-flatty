require 'sinatra/base'
require 'coffee_script'
require 'sinatra/assetpack'
require 'compass'
require 'sinatra/support'

module Uphex
  module Flatty
    ASSET_BASE_PATH = File.join(File.expand_path('..', __FILE__), 'assets')

    def self.registered(app)
      app.register Sinatra::CompassSupport
      app.register Sinatra::AssetPack

      Sass.load_paths << File.join(ASSET_BASE_PATH, 'stylesheets')
      Compass.configuration do |c|
        c.sass_dir         = File.join(ASSET_BASE_PATH, 'stylesheets')
        c.fonts_dir        = File.join(ASSET_BASE_PATH, 'fonts')
        c.http_fonts_path  = '/fonts'
        c.images_dir       = File.join(ASSET_BASE_PATH, 'images')
        c.http_images_path = '/images'
      end

      app.assets {
        serve '/javascripts', from: File.join(ASSET_BASE_PATH, 'javascripts')
        serve '/stylesheets', from: File.join(ASSET_BASE_PATH, 'stylesheets')
        serve '/images',      from: File.join(ASSET_BASE_PATH, 'images')
        serve '/fonts',       from: File.join(ASSET_BASE_PATH, 'fonts')

        js :app, '/javascripts/app.js', [
          '/javascripts/flatty/jquery/jquery.min.js',
          '/javascripts/flatty/jquery/jquery-migrate.min.js',
          '/javascripts/flatty/bootstrap/bootstrap.min.js',
          '/javascripts/flatty/theme.js'
        ]

        css :application, [ 'stylesheets/application.css' ]

        js_compression :jsmin
        css_compression :simple
      }
    end
  end
end
