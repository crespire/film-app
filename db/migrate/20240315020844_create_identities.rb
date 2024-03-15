class CreateIdentities < ActiveRecord::Migration[7.1]
  def change
    create_table :identities do |t|
      t.string :provider, null: false
      t.string :uid, null: false
      t.string :token
      t.jsonb :raw_data, default: {}
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
