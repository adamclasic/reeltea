require 'rails_helper'
require_relative '../suport/signin'
require_relative '../suport/tweet'

feature 'Create tweet' do
  let(:user) { User.new(name: 'adam allalou', username: 'pato', email: 'pato@gmail.com', password: 'adamadam', password_confirmation: 'adamadam') }
  let(:registration) { Register.new }
  let(:vyew) { Vyew.new }

  before(:each) do
    registration.visit_page('/users/sign_up').sign_up(user)
  end

  scenario 'Post a new tweet' do
    vyew.visit_page('/').tweet('This is a very nice idea')
    expect(page).to have_content 'nice'
  end
end