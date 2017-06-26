require "rails_helper"

describe 'the destroy sighting process' do
  it 'destroys a sighting from an animal' do
    animal = Animal.create(:species => 'Squirrel', :name => 'Sara', :id => 1)
    sighting = Sighting.create(:description => 'playing tricks and snapping necks', :date => '26-06-17', :lat => '666.666', :long => '666.666', :region => 'Arctic', :animal_id => 1)
    visit animal_path(animal)
    click_on 'Delete playing tricks and snapping necks'
    expect(page).not_to have_content 'playing tricks and snapping necks'
  end
end
