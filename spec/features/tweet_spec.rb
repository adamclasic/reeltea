require 'rails_helper'

RSpec.feature "Tweets", type: :feature do
  it 'Create a new tweet' do
    fill_in 'content', with: 'Its a new tweet. cheers!'
    click_on 'submit'
    expect(page).to have_content('Its a new tweet. cheers!')
  end

end
