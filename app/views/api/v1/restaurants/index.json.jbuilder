json.array! @restaurants do |restaurant|
  json.extract! restaurant, :id, :name, :address
  json.user do
    json.extract! restaurant.user, :id, :name, :email
  end
end