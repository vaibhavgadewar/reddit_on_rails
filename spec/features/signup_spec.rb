feature "Sign up Test" do
=begin
	before(:each) do
		visit pages_path

		visit new_user_registration_path

		email = "abcd1@example.com"
		fill_in 'user_email', :with => email
		fill_in 'user_password', :with => "password"
		fill_in 'user_password_confirmation', :with => "password"
		click_button 'Sign up'
	end
=end
	scenario "New user creates an account" do
		
		visit pages_path

		visit new_user_registration_path

		email = "abcd1234@example.com"
		fill_in 'user_email', :with => email
		fill_in 'user_password', :with => "password"
		fill_in 'user_password_confirmation', :with => "password"
		click_button 'Sign up'

		expect(page).to have_content "Welcome! You have signed up successfully."

	end

	scenario "New user creates an account with existed email" do
		@user = User.create(:email => "#{Time.now.to_f}@example.com", :password => "password")
		visit pages_path

		visit new_user_registration_path

		email = @user.email #"abcd1@example.com"
		fill_in 'user_email', :with => email
		fill_in 'user_password', :with => "password"
		fill_in 'user_password_confirmation', :with => "password"
		click_button 'Sign up'

		expect(page).to have_content 'Email has already been taken'

	end

	scenario "New user creates an account with password doesn't match" do 
		visit pages_path

		visit new_user_registration_path

		email = "abcd1@example.com"
		fill_in 'user_email', :with => email
		fill_in 'user_password', :with => "password"
		fill_in 'user_password_confirmation', :with => "pass"
		click_button 'Sign up'

		expect(page).to have_content "Password doesn't match confirmation"

	end

end