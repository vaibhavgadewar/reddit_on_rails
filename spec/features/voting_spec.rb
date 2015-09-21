feature "Vote for link" do
	scenario "Without signing in" do
		visit pages_path
		page.all(:link, '+')[1].click

		expect(page).to have_content('You need to sign in or sign up before continuing.')
	end

	scenario 'After signing in' do
		visit pages_path
		visit new_user_session_path
		email = 'vaibhav@gmail.com'
		fill_in 'user_email', :with => email
		fill_in 'user_password', :with => 'vaibhav1'
		click_button 'Log in'

		#expect(page).to have_content 'Signed in successfully.'
		#save_and_open_page
		puts page.all(:link, '+').count
		page.all(:link, '+')[1].click
		#save_and_open_page
		expect(page).not_to have_content 'You need to sign in or sign up before continuing.'
		
	end
end