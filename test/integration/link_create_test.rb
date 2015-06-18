require 'test_helper'

class LinkCreateTest < ActionDispatch::IntegrationTest

	test "world is round" do
		assert true
	end

	test "logged in user submits valid links" do
		user = User.create(:email => "#{Time.now.to_f}@example.com", :password => "password")
		visit new_user_session_path
		assert_equal '/users/sign_in', current_path

		fill_in 'user_email', :with => user.email
		fill_in 'user_password', :with => 'password'

		click_button 'Log in'
		refute_equal new_user_session_path, current_path

		save_and_open_page

		visit new_link_path
		title = "Random Title: #{Time.now.to_f}"
		fill_in 'link_title', :with => title

		fill_in 'link_url', :with => 'http://schneems.com'
		click_button 'Create Link'

		link = Link.last
		assert_equal link_path(link), current_path
		
		#puts link.title
		#puts link.url

		#assert has_content?(link.title), link.title.inspect 
		#assert has_content?(link.url), link.url.inspect

		assert link.title.present?
		assert link.url.present?




		
	end
end