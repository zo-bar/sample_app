require 'spec_helper'
require 'capybara/rspec'

describe "StaticPages" do
  describe "GET /static_pages/home" do
    it "works!" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get "static_pages/home"
      response.status.should be(200)
      visit "static_pages/home"

      page.should have_content('Sample App')
    end
  end

  describe "GET /static_pages/help" do
    it "works!" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get "static_pages/help"
      response.status.should be(200)
    end
  end
end
