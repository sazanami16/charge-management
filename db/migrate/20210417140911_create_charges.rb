class CreateCharges < ActiveRecord::Migration[6.0]
  def change
    create_table :charges do |t|
      t.string     :tax_name,   null: false
      t.integer    :money,      null: false
      t.datetime   :deadline,   null: false
      t.string     :place
      t.string     :address
      t.integer    :number
      t.string     :payment
      t.references :user,      foreign_key: true
      t.timestamps
    end
  end
end
