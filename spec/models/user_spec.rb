require 'rails_helper'

describe User do
  context 'making a user' do
    before(:each) do
      @attr = { email: 'blub@example.com',
                password: 'abcdefgh' }
    end

    it 'requires an email address' do
      user = User.new @attr.merge(email: '')
      expect(user).not_to be_valid
    end

    it 'requires a valid email address' do
      user = User.new @attr.merge(email: 'blub@abcd.')
      expect(user).not_to be_valid
    end

    it 'requires a valid email address' do
      user = User.new @attr.merge(email: 'blub-blub.de')
      expect(user).not_to be_valid
    end

    it 'ensures email uniqueness' do
      User.create! @attr
      user = User.new @attr
      expect(user).not_to be_valid
    end

    it 'should reject short passwords' do
      short = 'a' * 7
      user = User.new @attr.merge(password: short)
      expect(user).not_to be_valid
    end

    it 'should reject long passwords' do
      long = 'a' * 129
      user = User.new @attr.merge(password: long)
      expect(user).not_to be_valid
    end

    describe 'password encryption' do
      before :each do
        @user = User.create @attr
      end

      it 'should set the encrypted password' do
        expect(@user.encrypted_password).not_to be_blank
      end
    end
  end

end
