class RemoveIdCodeFromStudies < ActiveRecord::Migration
  def change
    remove_column :studies, :id_code, :string
  end
end
