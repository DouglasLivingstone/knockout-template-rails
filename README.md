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

Add knockout templates to your assets folder:

    <!-- in app/assets/javascript/templates/hello.khtml -->
    <div data-bind="text:message" class="important"></div>

Then reference them from `application.js`:

    //= require ./templates/hello.khtml

The templates will then be rendered as scrip blocks for use with the Knockout Native Template engine, like this:

    <script type="text/html" id="templates/test">
        <div data-bind="text:message" class="important"></div>
    </script>

## Configuration

If all the templates have a common prefix which should not appear in the template name, then in `config/application.rb` add:

    config.knockout_templates.prefix = "templates"

Which produces this output:

    <script type="text/html" id="test">
        <div data-bind="text:message" class="important"></div>
    </script>

## Acknowledgements

Template prefix mangling from the [jquery-tmpl-rails](https://github.com/jimmycuadra/jquery-tmpl-rails) gem.
