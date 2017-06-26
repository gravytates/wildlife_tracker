require 'rails_helper'

describe 'the edit a sighting process' do
  it 'edits a sighting' do
    animal = Animal.create(:species => 'Squirrel', :name => 'Sara', :id => 1)
    sighting = Sighting.create(:description => 'playing tricks and snapping necks', :date => '26-06-17', :lat => '666.666', :long => '666.666', :region => 'Arctic', :animal_id => 1)
    visit animal_path(animal)
    click_on 'Edit playing tricks and snapping necks'
    fill_in 'Region', :with => 'Desert'
    click_on 'Update Sighting'
    expect(page).to have_content 'playing tricks and snapping necks'
  end

  it 'gives error when a field is left blank' do
    animal = Animal.create(:species => 'Squirrel', :name => 'Sara', :id => 1)
    sighting = Sighting.create(:description => 'playing tricks and snapping necks', :date => '26-06-17', :lat => '666.666', :long => '666.666', :region => 'Arctic', :animal_id => 1)
    visit animal_path(animal)
    click_on 'Edit playing tricks and snapping necks'
    fill_in 'Region', :with => ''
    click_on 'Update Sighting'
    expect(page).to have_content 'errors'
  end
end
