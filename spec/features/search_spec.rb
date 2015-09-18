require 'spec_helper'

feature "Search test" do
    scenario "Search for items in database" do
        visit pages_path
        puts true
        expect(page).to have_content("Random Title")

        visit new_link_path
        puts true

        title = 'Ruby Tutorial'
        fill_in 'link_title', :with => title
        fill_in 'link_url', :with => "https://www.rubytutorial.com"
        click_button "Create Link"
        puts true

        fill_in 'q', :with => 'Random Title'
        click_button 'Search'
        puts true
        #save_and_open_page

        expect(page).to have_content("Random Title")
    end
end