feature 'Test' do
	scenario 'cheking expected value with stub' do
		
		visit pages_path
		visit new_user_session_path
		



		page.all(:link,"+")[4].click
		save_and_open_page
		expect(page).to have_content 'You need to sign in or sign up before continuing.'

	end
end