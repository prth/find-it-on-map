require 'rails_helper'
require 'support/utilities'

describe "Static pages" do 

	shared_examples "all static pages" do
		it { is_expected.to have_content(heading) }
		
		it { is_expected.to have_selector('title',
								:text => full_title(page_title), visible: false) }
	end

	describe "Home page" do 
		before { visit root_path }
		subject { page } 

		let(:heading) { 'home' }
		let(:page_title) { 'Home' }

		it_behaves_like "all static pages"
	end

	describe "Help page" do
		before { visit help_path }
		subject { page } 

		let(:heading) { 'help' }
		let(:page_title) { 'Help' }

		it_behaves_like "all static pages"
	end

	describe "About page" do
		before { visit about_path }
		subject { page } 

		let(:heading) { 'about' }
		let(:page_title) { 'About' }

		it_behaves_like "all static pages"
	end

	describe "Contact page" do
		before { visit contact_path }
		subject { page } 

		let(:heading) { 'contact' }
		let(:page_title) { 'Contact' }

		it_behaves_like "all static pages"
	end

	it "should have the right links on the layout" do
		visit root_path
		click_link("About", match: :first)
		expect(page).to have_selector('title', :text => full_title('About'), visible: false)
		click_link("Help", match: :first)
		expect(page).to have_selector('title', :text => full_title('Help'), visible: false)
		click_link("Contact", match: :first)
		expect(page).to have_selector('title', :text => full_title('Contact'), visible: false)
		click_link("Home", match: :first)
		expect(page).to have_selector('title', :text => full_title('Home'), visible: false)	
	end
end
