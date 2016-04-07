class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :alias
      t.string :first
      t.string :last
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
