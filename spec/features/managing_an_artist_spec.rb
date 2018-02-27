require 'rails_helper'

describe 'Managing an Artist', type: :feature do
  it 'allows creation of a new artist' do

  end

  it 'allows viewing of all active artists' do
    # arrange
    create(:artist, first_name: 'Billy', middle_name: 'Paul', last_name: 'Arlew', active: true)
    create(:artist, first_name: 'Toni', middle_name: nil, last_name: 'Rib', active: true)
    create(:artist, first_name: 'Trevor', middle_name: 'Sam', last_name: 'Donald', active: false)

    # act
    # visit '/artists'
    visit artists_path

    # assert
    expect(page).to have_content 'All Artists'
    expect(page).to have_content 'Billy Paul Arlew'
    expect(page).to have_content 'Toni Rib'
    expect(page).not_to have_content 'Trevor Sam Donald'
  end

  it 'allows viewing of a single artist' do

  end
end
