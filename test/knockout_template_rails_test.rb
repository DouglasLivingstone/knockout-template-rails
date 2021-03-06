require 'test_helper'

class KnockoutTemplateRailsTest < ActiveSupport::TestCase
  
  setup do
    Rails.configuration.knockout_templates.prefix = ""
    Rails.application.assets.cache = {}
  end

  test "knockout template assets are compiled" do
    template = Rails.application.assets["templates/test"]
    expected = "document.write('<scr' + 'ipt type=\"text/html\" id=\"templates/test\"><div class=\\\"test\\\" onclick=\\'alert(\\\"test\\\")\\'>Hello World!<\\/div>\\n</scr' + 'ipt>');"
    assert_equal expected, template.to_s
  end

  test "knockout template assets are compiled with correct prefix" do
    Rails.configuration.knockout_templates.prefix = "templates"
    template = Rails.application.assets["templates/test"]
    expected = "document.write('<scr' + 'ipt type=\"text/html\" id=\"test\"><div class=\\\"test\\\" onclick=\\'alert(\\\"test\\\")\\'>Hello World!<\\/div>\\n</scr' + 'ipt>');"
    assert_equal expected, template.to_s
  end
end
