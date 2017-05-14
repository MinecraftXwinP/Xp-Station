class CreateServers < ActiveRecord::Migration[5.0]
  def change
    create_table :servers do |t|
      t.string :name
      t.integer :max_player
      t.string :address
      t.integer :status,null: false,default:0
      t.string :token

      t.timestamps
    end
  end
end
