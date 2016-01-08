class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :registerable, :recoverable, :lockable and :omniauthable
  devise  :database_authenticatable,
          :rememberable,
          :trackable,
          :validatable,
          :timeoutable,
          :recoverable,
          :lockable
end
