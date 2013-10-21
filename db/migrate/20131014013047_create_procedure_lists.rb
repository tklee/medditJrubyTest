class CreateProcedureLists < ActiveRecord::Migration
  def change
    create_table :procedure_lists do |t|
      t.integer :procedure_id
      t.string :location

      t.timestamps
    end
  end
end
