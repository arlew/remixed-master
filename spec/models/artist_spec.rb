require 'rails_helper'

describe Artist, type: :model do
  it 'has a valid factory' do
    expect(build(:artist)).to be_valid
  end

  describe '#full_name' do

  end

  describe '.active' do

  end
end
