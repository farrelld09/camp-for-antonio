class CamperSerializer < ActiveModel::Serializer
  #object => An instance of a Camper
  attributes :id, :name, :campsite
  # => id: object.id
  #name
  #campsite => campsite: object.campsite => Camper.first.campsite => Campsite object with the matching id
  def campsite
    CampsiteSerializer.new(object.campsite)
  end
end
