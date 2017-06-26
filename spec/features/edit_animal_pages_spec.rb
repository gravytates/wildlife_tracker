require 'rails_helper'

describe 'the edit an animal process' do
  it 'edits an animal' do
    animal = Animal.create(:species => 'Squirrel', :name => 'Sara')
    visit animal_path(animal)
    click_on 'Edit'
    fill_in 'Name', :with => 'Sara Anne Schultz'
    click_on 'Update Animal'
    expect(page).to have_content 'Squirrel'
  end
end
