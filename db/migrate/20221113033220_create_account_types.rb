class CreateAccountTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :account_types do |t|

      t.string :name
      t.string :description

      t.timestamps
    end

    add_reference :account_types, :user, index: true
    add_foreign_key :account_types, :users
  end
end
