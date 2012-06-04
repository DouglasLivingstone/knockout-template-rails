# KnockoutTemplateRails

Knockout native template engine assets for Rails.

## Installation

Add this line to your application's Gemfile:

    gem 'knockout_template_rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install knockout_template_rails

## Usage

Add knockout templates to your assets folder.

    <!-- in app/assets/javascript/templates/hello.khtml -->
    <div data-bind="text:message" class="important"></div>

## Acknowledgements

Template prefix mangling from the [jquery-tmpl-rails](https://github.com/jimmycuadra/jquery-tmpl-rails) gem.
