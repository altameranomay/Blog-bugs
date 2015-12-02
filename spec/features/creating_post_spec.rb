require 'rails_helper'

feature 'Create Post' do
	let!(:post) {build :post}
	
	scenario 'with valid data' do
		visit new_post_path

		fill_in 'Name', with: post.name
		fill_in 'post_context', with: post.context

		click_button 'Create Post'

		expect(page).to have_content 'New post added'
	end

	scenario 'with invalid data' do
		visit new_post_path

		fill_in 'Name', with: ''
		fill_in 'post_context', with: ''
	
		click_button 'Create Post'

		expect(page).to have_content "Failed Posting"
	end

end