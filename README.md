# Smacssify

A Rails generator to set up a nice SMACSS-style directory structure inside assets/stylesheets. Very opinionated, only SASS and no require_tree allowed in your manifest file! This generator will set up a directory structure like so:

    --stylesheets/
      |
      |--base/
      |
      |--layout/
      |
      |--module/
      |
      |--state/
      |
      |--application.css
      |
      |--compiler.scss

Everything from base, layout, module and state gets @imported into the compiler file which inturn gets required in application.css.

## Installation

Add this line to your application's Gemfile:

    gem 'smacssify'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install smacssify

## Usage

    $ rails g smacssify:install

Take a break, eat a KitKat.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b feature/my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
