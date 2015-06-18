require 'test_helper'

class SearchTest < ActionDispatch::IntegrationTest
	test "search for items in database works" do
		#visit index_pages_path
		visit '/'

		visit new_link_path
		title = "Ruby Tutorial"
		fill_in 'link_title', :with => title
		fill_in 'link_url', :with => 'http://www.tutorialspoint.com/ruby/'
		click_button 'Create Link'

		fill_in 'q', :with => 'tutorial'
		click_button 'Search'

		assert_equal search_path, current_path

		save_and_open_page


	end
end
