require 'rails_helper'

RSpec.describe Task, type: :model do
  subject do
    described_class.new(name: 'wash')
  end

  it 'is valid with a name' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    task.name = nil
    expect(subject).not_to be_valid
  end
end
