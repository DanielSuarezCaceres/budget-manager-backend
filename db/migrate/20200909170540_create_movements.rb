class CreateMovements < ActiveRecord::Migration[6.0]
  def change
    create_table :movements do |t|
      t.float :amount
      t.string :concept
      t.string :description
      t.string :payment
      t.date :day

      t.timestamps
    end
  end
end
