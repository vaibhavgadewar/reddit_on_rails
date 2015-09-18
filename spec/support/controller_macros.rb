module ControllerMacros

  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)
      #user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
      
      sign_in user
    end
  end
=begin
  def sign_up(user)
      puts user.email
      puts user_password
      visit new_user_registration_path
      fill_in "user_email",    with: user.email #{}"abcd@gmail.com"
      fill_in "user_password", with: user.password
      fill_in "user_password_confirmation", with: user.password_confirmation
      click_button "Sign up"
  end
=end
end 