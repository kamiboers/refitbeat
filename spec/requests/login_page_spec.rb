require 'rails_helper'

RSpec.describe "login page", :type => :request do
  it "displays welcome and `login to fitbit` button" do
    get "/"
    
    expect(page).to have_content('Welcome to Fitbeat')
    expect(page).to have_content('Please log in with Fitbit to continue')
    
    within ".login_button_container" do
      expect(page).to have_button('Please log in with Fitbit to continue')
    end

  end
end