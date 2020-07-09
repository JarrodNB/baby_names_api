class ListSerializer < ActiveModel::Serializer
  attributes :id,
             :public_id


  has_many :babies, serializer: BabySerializer
end
