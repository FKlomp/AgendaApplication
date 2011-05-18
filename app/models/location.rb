class Location < ActiveRecord::Base
  has_one :address, :class_name => "Address",
    :foreign_key => "id_location";
end