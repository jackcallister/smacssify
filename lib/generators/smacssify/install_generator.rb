require 'rails/generators'

module Smacssify
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../../../", __FILE__)
    
    desc "This generator sets up the smacss directory structure"

    # Commandline options can be defined here using Thor-like options:
    # class_option :my_opt, :type => :boolean, :default => false, :desc => "My Option"

    # I can later access that option using:
    # options[:my_opt]

    # def self.source_root
    #   @source_root ||= File.join(File.dirname(__FILE__), 'templates')
    # end

    def add_assets
      directory "assets/stylesheets", "app/assets/stylesheets"
    end

    # Generator Code. Remember this is just suped-up Thor so methods are executed in order
  end
end
