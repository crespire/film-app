class CreateRolls < ActiveRecord::Migration[7.1]
  def change
    create_table :rolls do |t|
      t.string :camera, default: nil
      t.string :film_name, default: nil
      t.string :film_speed, default: nil
      t.integer :status, default: 0
      t.integer :film_type, default: 0
      t.text :notes

      t.timestamps
    end
  end
end
