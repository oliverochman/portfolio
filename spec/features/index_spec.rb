require 'spec_helper'

RSpec.describe 'projects.html', type: :feature do
  describe 'displays project list' do
    before do
      visit '/projects.html'
    end
    it 'BMI challenge' do
      expect(page).to have_content 'BMI challenge'
    end
    it 'FizzBuzz' do
      expect(page).to have_content 'FizzBuzz'
    end
    it 'Cooper Test Challenge' do
      expect(page).to have_content 'Cooper Test Challenge'
    end
    it 'ATM challenge' do
      expect(page).to have_content 'ATM Challenge'
    end
  end
end

RSpec.describe 'contact.html', type: :feature do
  describe 'displays contact links' do
    before do
      visit '/contact.html'
    end
    it 'to facebook' do
      expect(page).to have_link '', href: 'https://www.facebook.com/oochman'
    end
    it 'to github' do
      expect(page).to have_link '', href: 'https://github.com/oliverochman'
    end
    it 'to instagram' do
      expect(page).to have_link '', href: 'https://www.instagram.com/ihhdoliver/'
    end
  end
end

RSpec.describe 'cv.html', type: :feature do
  describe 'displays CV info' do
    before do
      visit '/cv.html'
    end
    it 'about GESAB' do
      expect(page).to have_content 'GESAB (2016)'
    end
    it 'about Kungstorget' do
      expect(page).to have_content 'Kungstorget (2016-2017)'
    end
    it 'about Johan Reistad F.A' do
      expect(page).to have_content 'Johan Reistad F.A (2017)'
    end
    it 'about Education' do
      expect(page).to have_content 'High School, 2013-2016'
    end
  end
end
