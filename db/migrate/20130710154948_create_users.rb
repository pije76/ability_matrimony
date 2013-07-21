class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :qualification
      t.string :religion
      t.string :marital_status
      t.string :occupation
      t.integer :income
      t.string :disability
      t.string :dother
      t.string :willing
      t.string :wother
      t.binary :photo
      t.string :own
      t.string :disabled
      t.string :divorce
      t.string :reasons
      t.string :father_name
      t.integer :father_age
      t.string :father_status
      t.string :mother_name
      t.integer :mother_age
      t.integer :mother_status
      t.string :parent_address
      t.integer :parent_phone
      t.string :dob
      t.integer :age
      t.string :subcaste
      t.string :passport_date
      t.string :passport_place
      
      t.timestamps
    end
  end
end
