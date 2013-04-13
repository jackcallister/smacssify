require 'rails/generators'

module Smacssify
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../../../", __FILE__)

    desc "This generator sets up the smacss directory structure"

    # Commandline options can be defined here using Thor-like options:
    # class_option :my_opt, :type => :boolean, :default => false, :desc => "My Option"

    # I can later access that option using:
    # options[:my_opt]

    def add_assets
      directory "assets/stylesheets", "app/assets/stylesheets"

      css_manifest = "app/assets/stylesheets/application.css"

      # Thanks https://github.com/seyhunak/twitter-bootstrap-rails/ for bits of this code!
      if File.exist?(css_manifest)
        # Add our own require:
        content = File.read(css_manifest)
        if content.match(/require_tree\s+\.\s*$/)
          # We don't want to include the tree - just our compiler.css.scss
          gsub_file(css_manifest, /require_tree\s+\.\s*$/, "")
        end
        style_require_block = " *= require ./compiler\n"
        insert_into_file css_manifest, style_require_block, :after => "require_self\n"
      else
        copy_file "/assets/templates/application.css.scss", "app/assets/stylesheets/application.css.scss"
      end
    end

    # Generator Code. Remember this is just suped-up Thor so methods are executed in order
  end
end
