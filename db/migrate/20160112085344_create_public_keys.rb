class CreatePublicKeys < ActiveRecord::Migration
  def change
    create_table :public_keys do |t|
      t.string :key
      t.references :user, index: true, foreign_key: true
      t.boolean :active?

      t.timestamps null: false
    end
  end
end
