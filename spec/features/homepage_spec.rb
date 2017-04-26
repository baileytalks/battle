require './app'
require 'spec_helper'

feature do
  scenario 'expects the homepage to say Testing infrastructure working!' do
    visit('/')
    expect(page).to have_content('Testing infrastructure working!')
  end
end
