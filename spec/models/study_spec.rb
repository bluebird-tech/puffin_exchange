require 'rails_helper'

RSpec.describe Study, type: :model do
  context 'creating a Study' do
    before(:each) do
      @attr = { title: 'example_study',
                description: 'somethingsomethingsomething' }
    end

    it 'requires a title' do
      study = Study.new @attr.merge(title: '')
      expect(study).not_to be_valid
    end

    it 'should reject a too long title' do
      too_long = 'a' * 51
      study = Study.new @attr.merge(title: too_long)
      expect(study).not_to be_valid
    end

    it 'should reject a too long description' do
      too_long = 'a' * 256
      study = Study.new @attr.merge(description: too_long)
      expect(study).not_to be_valid
    end
  end
end
