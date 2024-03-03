class CreateScans < ActiveRecord::Migration[7.1]
  def change
    create_table :scans do |t|
      t.integer :status, default: 0
      t.references :image, null: false, foreign_key: true
      t.references :roll, null: false, foreign_key: true

      t.timestamps
    end
  end
end
