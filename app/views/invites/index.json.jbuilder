json.array!(@invites) do |invite|
  json.extract! invite, :id, :name, :email, :phone, :address, :company, :location, :isVeg
  json.url invite_url(invite, format: :json)
end
