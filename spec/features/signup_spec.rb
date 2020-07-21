require 'rails_helper'
require_relative '../suport/signin'

feature 'User Registration' do
  let(:user) { User.new(name: 'adam allalou', username: 'pato', email: 'pato@gmail.com', password: 'adamadam', password_confirmation: 'adamadam') }
  let(:user2) { User.new(name: 'aadd', username: 'fdsa') }
  let(:registration) { Register.new }

  scenario 'Redirect to posts page on successful signup' do
    registration.visit_page('/users/sign_up').sign_up(user)
    expect(page.current_path).to eq '/'
  end

  scenario 'Redirect to users page on fail' do
    registration.visit_page('/users/sign_up').sign_up(user2)
    expect(page.current_path).to eq '/users'
  end
end
