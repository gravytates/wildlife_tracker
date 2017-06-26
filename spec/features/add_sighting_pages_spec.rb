require 'rails_helper'

describe 'the adding sighting process' do
  it 'adds a sighting to an animal' do
    animal = Animal.create(:species => 'Squirrel', :name => 'Sara')
    visit animal_path(animal)
    click_on 'Add sighting'
    fill_in 'Description', :with => 'playing tricks and snapping necks'
    fill_in 'Date', :with => '26-06-17'
    fill_in 'Lat', :with => '666.666'
    fill_in 'Long', :with => '666.666'
    fill_in 'Region', :with => 'Arctic'
    click_on 'Create Sighting'
    expect(page).to have_content 'Add sighting'
  end

  it 'produces errors' do
    animal = Animal.create(:species => 'Squirrel', :name => 'Sara')
    visit animal_path(animal)
    click_on 'Add sighting'
    fill_in 'Description', :with => 'playing tricks and snapping necks'
    fill_in 'Date', :with => '26-06-17'
    fill_in 'Lat', :with => '666.666'
    fill_in 'Long', :with => ''
    fill_in 'Region', :with => 'Arctic'
    click_on 'Create Sighting'
    expect(page).to have_content 'errors'
  end
end
