class CreateFirstTable < ActiveRecord::Migration[8.0]
  def change
    # Tabel billings
    create_table :billings do |t|
      t.string :name
      t.string :description
      t.integer :unit_id
      t.boolean :status
      t.timestamps
    end

    # Tabel units
    create_table :units do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :minutes
      t.boolean :status
      t.timestamps
    end

    # Tabel history_rents
    create_table :history_rents do |t|
      t.integer :billing_id
      t.integer :unit_id
      t.integer :customer_id
      t.timestamps
    end

    # Tabel customers
    create_table :customers do |t|
      t.string :name
      t.integer :customer_phone
      t.timestamps
    end

    # Tabel users
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :role
      t.timestamps
    end
  end
end
