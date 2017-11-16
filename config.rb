# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :livereload

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

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

  def scrape_craft
    require 'open-uri'
    require 'mechanize'
    require 'nokogiri'

    site_url = "https://www.craftacademy.se/english/curriculum/"
    agent = Mechanize.new
    page = agent.get(site_url)
    weeks = page.search('.category')
    content = []
    weeks.each do |week|
      hash = {
        header: week.search('h4').text,
        sub_header: week.search('dt').text,
        body: week.search('dd p').text
    }
      content.push(hash)
    end
    content
  end
end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end
