require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages/home" do
    it "should have the h1 'Sample App'" do
      visit "/static_pages/home"
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the right title 'Home'" do
      visit "/static_pages/home"
      puts page.body
      page.should have_title("Ruby on Rails Tutorial Sample App | Home" )
    end
  end

  describe "GET /static_pages/help" do
    it "should have the h1 'Help'" do
      visit "static_pages/help"
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the right title 'Help'" do
      visit "static_pages/help"
      puts page.body
      page.should have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
    it "Should have the h1 'About us'" do
      visit "static_pages/about"
      page.should have_selector('h1', :text => 'About us')
    end
    it "should have the right title 'About'" do
      visit "static_pages/about"
      page.should have_title("Ruby on Rails Tutorial Sample App | About")
    end
  end
end