class CreateCoins < ActiveRecord::Migration[7.0]
  def change
    create_table :coins do |t|
      t.string :ticker
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
