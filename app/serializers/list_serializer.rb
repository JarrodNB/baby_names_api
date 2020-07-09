class ListSerializer < ActiveModel::Serializer
  attributes :id,
             :public_id


  has_many :babies, serializer: BabySerializer

  def babies
    object.babies.order(:created_at)
  end
end
