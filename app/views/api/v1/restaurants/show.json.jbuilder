json.extract! @restaurant, :id, :name, :address
json.restaurant_owner do
  json.extract! @restaurant.user, :id, :name, :email
end

json.comments @restaurant.comments do |comment|
  json.extract! comment, :id, :content
  json.comment_user do
    json.extract! comment.user, :id, :name, :email
  end
end