
feature 'User comments on link' do
    before(:all) do
        @user = User.create(:email => "#{Time.now.to_f}@example.com", :password => "password")
        visit new_user_session_path
        expect(page.current_path).to eq "/users/sign_in"

        fill_in 'user_email', :with => @user.email
        fill_in 'user_password', :with => 'password'
        click_button 'Log in'

        expect(page.current_path).not_to eq new_user_session_path

        #save_and_open_page
    
        visit new_link_path
        title = "Random Title of time: #{Time.now.to_f}"
        fill_in 'link_title', :with => title
        fill_in 'link_url', :with => 'http://schneems.com'
        click_button 'Create Link'
        link = Link.last
        
        expect(page.current_path).to eq link_path(link)
        click_on "Sign Out"

    end

	scenario 'before signing in' do
        link = Link.last
        visit link_path(link)
    	fill_in 'comment_message', :with => 'Its Youtube'
	    expect(page).to have_field('comment_message', with: 'Its Youtube')
	    click_button 'Create Comment'
	    #save_and_open_page
	    expect(page).to have_content('You need to sign in or sign up before continuing.')

	end

	scenario 'after signing in' do

		visit new_user_session_path
        expect(page.current_path).to eq "/users/sign_in"

        email = @user.email #"abcd@gmail.com"
        fill_in 'user_email', :with => email
        fill_in 'user_password', :with => 'password'
        click_button 'Log in'

        expect(page.current_path).not_to eq new_user_session_path

        #save_and_open_page
    
        visit new_link_path
        title = "Youtube"
        fill_in 'link_title', :with => title
        fill_in 'link_url', :with => 'http://www.youtube.com'
        click_button 'Create Link'
        link = Link.last
        
        expect(page.current_path).to eq link_path(link)
        #save_and_open_page

        fill_in 'comment_message', :with => 'Its Youtube'
        expect(page).to have_field('comment_message', with: 'Its Youtube')
        click_button 'Create Comment'
        #save_and_open_page
        expect(page).to have_content 'Its Youtube'

	end

end