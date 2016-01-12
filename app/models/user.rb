class User < ActiveRecord::Base
  has_many :public_keys, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :registerable, :recoverable, :lockable and :omniauthable
  devise  :database_authenticatable,
          :rememberable,
          :trackable,
          :validatable,
          :timeoutable,
          :recoverable,
          :lockable,
          :registerable
end
