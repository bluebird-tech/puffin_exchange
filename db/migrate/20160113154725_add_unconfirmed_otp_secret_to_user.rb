class AddUnconfirmedOtpSecretToUser < ActiveRecord::Migration
  def change
    add_column :users, :unconfirmed_otp_secret, :string
  end
end
