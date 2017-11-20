module SocialIconsHelper
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
