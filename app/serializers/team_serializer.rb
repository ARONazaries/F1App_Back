class TeamSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :image
end
