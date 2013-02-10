class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.references :parent
      t.string :name
      t.string :kind
      t.integer :size
      t.datetime :modified_at

      t.timestamps
    end
  end
end
