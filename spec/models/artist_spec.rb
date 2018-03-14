require 'rails_helper'

describe Artist, type: :model do
  it 'has a valid factory' do
    expect(build(:artist)).to be_valid
  end

  describe '#full_name' do
    context 'when middle name present' do
      it 'returns correct full name with middle name' do
        artist = create(:artist, first_name: 'Billy', middle_name: 'Paul', last_name: 'Arlew')

        expect(artist.full_name).to eq('Billy Paul Arlew')
      end
    end

    context 'when middle name not present' do
      it 'returns correct full name without middle name' do
        artist = create(:artist, first_name: 'Tom', middle_name: nil, last_name: 'Brady')

        expect(artist.full_name).to eq('Tom Brady')
      end
    end
  end

  describe '.active' do
    it 'returns only active users' do
      artist_active = create(:artist, active: true)
      artist_inactive = create(:artist, active: false)

      # expect(Artist.active).to include artist_active
      # expect(Artist.active).not_to include artist_inactive
      expect(Artist.active).to match_array [artist_active]
    end
  end
end
