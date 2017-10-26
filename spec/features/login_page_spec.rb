require 'rails_helper'

RSpec.feature "login page", :type => :feature do
  it "displays welcome and `login to fitbit` button" do
    visit "/"
    
    expect(page).to have_content('Welcome to Fitbeat')
    expect(page).to have_content('Please log in with Fitbit to continue')
    
    within ".login_button_container" do
      expect(page).to have_button('Please log in with Fitbit to continue')
    end

  end
end