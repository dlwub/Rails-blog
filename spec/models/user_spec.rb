require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.') }

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'subject.name should return Tom' do
    expect(subject.name).to eq 'Tom'
  end

  it 'postscounter should be integer' do
    subject.postscounter = 'a'
    expect(subject).to_not be_valid
  end

  it 'postscounter should be integer greater than or equal to 0' do
    subject.postscounter = -1
    expect(subject).to_not be_valid
  end
end
