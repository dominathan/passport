json.array!(@potential_members) do |potential_member|
  json.extract! potential_member, :id, :first_name, :last_name, :email, :zip_code
  json.url potential_member_url(potential_member, format: :json)
end
