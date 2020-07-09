class BabySerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :list_id,
             :crossed_out
   
end
