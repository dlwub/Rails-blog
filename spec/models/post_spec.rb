require 'rails_helper'

RSpec.describe Post, type: :model do
  subject do
    Post.new(author: @fifth_user, title: 'Hello', text: 'This is my first post')
  end
  before { subject.save }

  it 'title should be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'title should be not valid' do
    subject.title = 'a' * 251
    expect(subject).to_not be_valid
  end

  it 'title should be less than or equal to 250 characters' do
    subject.title = 'a' * 251
    expect(subject).to_not be_valid
  end

  it 'subject.title should return Hello' do
    expect(subject.title).to eq 'Hello'
  end

  it 'commentscounter should be integer' do
    subject.commentscounter = 'a'
    expect(subject).to_not be_valid
  end

  it 'commentscounter should be integer greater than or equal to 0' do
    subject.commentscounter = -1
    expect(subject).to_not be_valid
  end

  it 'likescounter should be integer' do
    subject.likescounter = 'a'
    expect(subject).to_not be_valid
  end

  it 'likescounter should be integer greater than or equal to 0' do
    subject.likescounter = -1
    expect(subject).to_not be_valid
  end
end
