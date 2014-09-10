class CreateRegistries < ActiveRecord::Migration
  def change
    create_table :registries do |t|
      t.datetime :reg_date
      t.float :total_value
      t.string :reg_type
      t.string :description

      t.timestamps
    end
  end
end
