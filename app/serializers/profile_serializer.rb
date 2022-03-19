class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :img_url, :about
  has_one :user
end
