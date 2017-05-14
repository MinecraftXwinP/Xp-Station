class CreateLinkTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :link_tokens do |t|
      t.references :player
      t.string :token,limit: 20,null:false,default: ''
      t.index :token,unique: true
      t.timestamps
    end
  end
end
