require 'rails_helper'

describe "add animal process" do
  it 'adds a new critter' do
    visit animals_path
    click_link 'New Critter'
    fill_in 'Name', :with => 'Calvin'
    fill_in 'Species', :with => 'Western Box Turtle'
    click_on 'Create Animal'
    expect(page).to have_content 'Animals'
  end
end
