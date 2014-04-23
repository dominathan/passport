class CreatePotentialPartners < ActiveRecord::Migration
  def change
    create_table :potential_partners do |t|
      t.string :studio_name
      t.string :person_to_contact
      t.string :contact_number
      t.string :email
      t.string :web_address
      t.text :how_did_you_hear_partner

      t.timestamps
    end
  end
end
