require 'spec_helper'

describe "StaticPages" do
  # describe "GET /static_pages" do
  #   it "works! (now write some real specs)" do
  #     # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #     get static_pages_index_path
  #     response.status.should be(200)
  #   end
  # end
	describe "Home Page" do

		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			expect(page) .to have_content ('Sample App')
		end

		it "should have the right title" do
			visit '/static_pages/home'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
		end
	end


  	describe "Help page" do
    	it "should have the content 'Help'" do
      		visit '/static_pages/help'
      		expect(page).to have_content('Help')
		end
		it "should have the right title" do
		visit '/static_pages/help'
		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
	end 
	end

	describe "About Page" do
		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_content('About Us')
		end
		it "should have the right title" do
			visit '/static_pages/about'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
		end
	end


end


