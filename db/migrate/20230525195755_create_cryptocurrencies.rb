class CreateCryptocurrencies < ActiveRecord::Migration[7.0]
  def change
    create_table :cryptocurrencies do |t|
      t.string :name
      t.float :price
      t.float :change
      t.datetime :timestamp

      t.timestamps
    end
  end
end
