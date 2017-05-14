class CreateMinecraftProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :minecraft_profiles do |t|
      t.references :player, foreign_key: true
      t.string :uuid, limit: 32
      t.string :minecraft_id
      t.datetime :synced_at
      t.datetime :confirmed_at

      t.timestamps
    end
  end
end
