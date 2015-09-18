feature 'Test' do
	scenario 'cheking expected value with stub' do
		
		visit pages_path
		visit new_user_session_path
		email = 'vaibhav@gmail.com'
		fill_in 'user_email', :with => email
		fill_in 'user_password', :with => 'vaibhav1'
		click_button 'Log in'

		page.all(:link,"+")[4].click
		#save_and_open_page
		expect(page).to have_content 'You need to sign in or sign up before continuing.'

	end
end