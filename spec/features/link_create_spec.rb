require 'spec_helper'

feature "Link Create Test" do
    scenario "User submits a valid link without login" do
        visit new_link_path
        title = "Random Title: #{Time.now.to_f}"
        fill_in 'link_title', :with => title
        fill_in 'link_url', :with => 'http://www.google.com'
        click_button 'Create Link'

        expect(page).to have_text "You need to sign in or sign up before continuing."
    end

    scenario "Logged in user submits a valid link" do
        user = User.create(:email => "#{Time.now.to_f}@example.com", :password => "password")

        visit new_user_session_path
        expect(page.current_path).to eq "/users/sign_in"

        fill_in 'user_email', :with => user.email
        fill_in 'user_password', :with => 'password'
        click_button 'Log in'

        expect(page.current_path).not_to eq new_user_session_path

        save_and_open_page
    
        visit new_link_path
        title = "Random Title: #{Time.now.to_f}"
        fill_in 'link_title', :with => title
        fill_in 'link_url', :with => 'http://schneems.com'
        click_button 'Create Link'
        link = Link.last
        
        expect(page.current_path).to eq link_path(link)

        save_and_open_page
    end
end