class ChangeFormatOfKeyInPublicKey < ActiveRecord::Migration
  def up
    change_column :public_keys, :key, :text
  end

  def down
    change_column :public_keys, :key, :string
  end
end
