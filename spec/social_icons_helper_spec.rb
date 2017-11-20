#class FakeHelper
#  include SocialIconsHelper
#end


#RSpec.describe SocialIconsHelper do
#  subject(:helper) do
#    FakeHelper.new
#  end

#  before do
#    helper.extend Haml::Helpers
#    collection = YAML.load_file('./data/contacts.yml')
#     helper.display_social_icon(OpenStruct.new(collection.first))

#    binding.pry
#  end
#  it '' do
#    expect(display_social_icon(contact)).to
#  end
#end
