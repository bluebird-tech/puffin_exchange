class FixColumnNameForPublicKeys < ActiveRecord::Migration
  def change
    rename_column :public_keys, :active?, :active
  end
end
