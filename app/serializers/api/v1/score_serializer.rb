class Api::V1::ScoreSerializer < ActiveModel::Serializer
    attributes :points, :user_name, :rank
end