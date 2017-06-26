require 'rails_helper'

describe 'the destroy animal process' do
  it 'destroys an animal(but just from this site)' do
    animal = Animal.create(:species => 'Squirrel', :name => 'Sara')
    visit animal_path(animal)
    click_on 'Delete'
    expect(page).not_to have_content('Squirrel')
  end
end
