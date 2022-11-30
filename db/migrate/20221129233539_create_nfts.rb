class CreateNfts < ActiveRecord::Migration[7.0]
  def change
    create_table :nfts do |t|
      t.string :name
      t.integer :vote_count, default: 0

      t.timestamps
    end
  end
end
