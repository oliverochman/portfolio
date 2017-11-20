require 'lib/social_icons_helper'

Haml::TempleEngine.disable_option_validator!

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :livereload

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

helpers SocialIconsHelper
helpers do
  def display_date
    DateTime.now.strftime('%Y-%m-%d %H:%M')
  end

  def display_social_icon(contact)
     if contact.name == 'Github'
       haml_tag :i, class: 'fa fa-github fa-5'
     elsif contact.name == 'Facebook'
       haml_tag :i, class: 'fa fa-facebook fa-5'
     elsif contact.name == 'Instagram'
       haml_tag :i, class: 'fa fa-instagram fa-5'
    end
  end
end
