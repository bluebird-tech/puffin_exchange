class CreateAffiliations < ActiveRecord::Migration
  def change
    create_table :affiliations do |t|
      t.integer :user_id
      t.integer :study_id

      t.timestamps null: false
    end
    add_index :affiliations, :user_id
    add_index :affiliations, :study_id
    add_index :affiliations, [:user_id, :study_id], unique: true
  end
end
