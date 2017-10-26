require 'rails_helper'

RSpec.feature "login page", :type => :feature do
  it "displays welcome and `login to fitbit` button" do
    visit "/"
    
    within ".splash-welcome" do
      expect(page).to have_content('Welcome to FitBeat')
    end
    save_and_open_page
    
    within ".login-button-container" do
      expect(page).to have_link('Log In')
      expect(page).to have_content('Please log in with Fitbit to continue')
    end

  end
end