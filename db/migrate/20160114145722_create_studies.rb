class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.string :title
      t.text :description
      t.string :id_code

      t.timestamps null: false
    end
  end
end
