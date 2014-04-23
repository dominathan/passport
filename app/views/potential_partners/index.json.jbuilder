json.array!(@potential_partners) do |potential_partner|
  json.extract! potential_partner, :id, :studio_name, :person_to_contact, :contact_number, :email, :web_address, :how_did_you_hear_partner
  json.url potential_partner_url(potential_partner, format: :json)
end
