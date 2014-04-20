class CreatePotentialMembers < ActiveRecord::Migration
  def change
    create_table :potential_members do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :zip_code

      t.timestamps
    end
  end
end
