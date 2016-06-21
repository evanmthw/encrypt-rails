class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :encrypted_ssn
      t.string :encrypted_ssn_iv

      t.timestamps null: false
    end
  end
end
