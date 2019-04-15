class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.belongs_to :user, null: false, index: true
      t.belongs_to :bank, null: false, index: true
      t.string :name, null: false
      t.integer :balance

      t.timestamps
    end
  end
end
