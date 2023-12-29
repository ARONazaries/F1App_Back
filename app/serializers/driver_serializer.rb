class DriverSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :surname, :wins, :image, :number_img
end

