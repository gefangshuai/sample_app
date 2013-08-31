require 'spec_helper'

describe "StaticPages" do
  #test home page
  describe "Home Page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the right title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Home")
    end
  end

  #test help page
  describe "Help Page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help Me')
    end
  end

  #test about page

  describe "About Page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content("About Us")
    end
  end

  describe "Contact Page" do
    it "should have the right title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title('Contact')
    end
  end
end